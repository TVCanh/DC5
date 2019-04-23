package com.example.demo.hateos;

import com.example.demo.model.Order;
import com.example.demo.model.OrderItem;
import com.fasterxml.jackson.annotation.JsonProperty;
import org.springframework.hateoas.ResourceSupport;

import java.util.List;

public class OrderResource extends ResourceSupport {
    @JsonProperty
    public long id;
    public String name;
    public String address;
    public double totalPrice;
    public String created;
    public List<OrderItem> items;

    public OrderResource(Order o){
        id = o.getId();
        name = o.getName();
        address = o.getAddress();
       // created = o.getCreated() ;
        totalPrice = o.getTotalPrice();
        items = o.getItems();
    }
}
