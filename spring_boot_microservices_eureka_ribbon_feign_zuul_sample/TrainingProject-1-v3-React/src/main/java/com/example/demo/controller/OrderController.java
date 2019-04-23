package com.example.demo.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.validation.Validator;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.*;

import com.example.demo.hateos.OrderResource;
import com.example.demo.model.Order;
import com.example.demo.model.Product;
import com.example.demo.respository.OrderRepository;
import com.example.demo.security.services.EcommerceService;

import javax.validation.Valid;

import java.time.LocalDate;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@RestController
@RequestMapping("/api/auth/order")
public class OrderController extends CoreController{

    @Autowired
    private EcommerceService ecommerceService;
    
    @Autowired
    private OrderRepository orderRepository;


    @RequestMapping(method = RequestMethod.GET)
    public List<OrderResource> index() {
        List<Order> orders = ecommerceService.getOrders();
        List<OrderResource> out = new ArrayList<OrderResource>();
        if(orders != null){
            orders.forEach(o -> {
                OrderResource orderResource = new OrderResource(o);
                orderResource.add(createHateoasLink(o.getId()));

                out.add(orderResource);
            });
        }
        return out;
    }
    
    @GetMapping(value = "/all")
    @PreAuthorize("hasRole('ADMIN') or hasRole('ROLE_SUPERVISOR')  or hasRole('ROLE_STAFF')")
	public List<Order> getAllOrdert(){
		return orderRepository.findAll();
	}
	
	@GetMapping(value = "/{id}")
	@PreAuthorize(" hasRole('ADMIN') or hasRole('ROLE_SUPERVISOR') or hasRole('ROLE_STAFF')")
	public ResponseEntity<Order> getOrderById (@PathVariable(value = "id") Long orderId){
		Order order = orderRepository.findById(orderId)
				.orElseThrow(() -> new RuntimeException("Fail! -> Cause: Order Id not find."));
        return ResponseEntity.ok().body(order);
	}
	
	@DeleteMapping(value = "/delete/{id}")
	@PreAuthorize(" hasRole('ADMIN') or hasRole('ROLE_SUPERVISOR')  or hasRole('ROLE_STAFF')")
	public Map<String, Boolean> deleteOrder(@PathVariable(value = "id") Long productId){
		Order order = orderRepository.findById(productId)
				.orElseThrow(() -> new RuntimeException("Fail! -> Cause: Order Id not find."));
		orderRepository.delete(order);
		Map<String, Boolean> response = new HashMap<>();
		response.put("deleted", Boolean.TRUE);
		return response ;
	}

    @PostMapping("create")
    public Order create(@RequestBody @Valid Order order){

        // Required by Hibernate ORM to save properly
        if(order.getItems() !=null){
            order.getItems().forEach(item -> item.setOrder(order));
        }
        order.setDateCreated(LocalDate.now());
        return ecommerceService.saveOrder(order);
    }

//    @RequestMapping("/{id}")
//    public OrderResource view(@PathVariable("id") long id){
//        OrderResource orderResource = new OrderResource(ecommerceService.getOrder(id));
//        orderResource.add(createHateoasLink(id));
//        return orderResource;
//    }
//
//    @RequestMapping(value = "/{id}", method = RequestMethod.POST)
//    public Order edit(@PathVariable("id") long id, @RequestBody @Valid Order order){
//
//        Order updatedOrder = ecommerceService.getOrder(id);
//
//        if(updatedOrder== null){
//            return null;
//        }
//
//
//        return ecommerceService.saveOrder(updatedOrder);
//    }
}
