package com.example.demo.security.services;

import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.demo.model.Image;
import com.example.demo.model.Order;
import com.example.demo.model.Product;
import com.example.demo.model.ProductGroup;
import com.example.demo.model.UserImage;
import com.example.demo.respository.GroupRepository;
import com.example.demo.respository.ImageRepository;
import com.example.demo.respository.OrderRepository;
import com.example.demo.respository.ProductRepository;
import com.example.demo.respository.UserImageRepository;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.util.List;

@Service
public class EcommerceService {

    @Autowired
    ProductRepository productRepository;
    
    @Autowired
    GroupRepository groupRepository;

    @Autowired
    OrderRepository orderRepository;
    
    @Autowired
    UserImageRepository userImageRepository;
    
    @Autowired
    ImageRepository imageRepository;


    /* PRODUCT */
    public List<Product> getProducts(){
        return productRepository.findAll();
    }
    public Product getProduct(long id){
        return productRepository.getOne(id);
    }
    public Product saveProduct(Product product){
        return productRepository.save(product);
    }

    public String addProductImage(final String productId, final String filename){

        Image image = new Image();
        image.setProductId(Long.parseLong(productId));
        image.setPath(filename);
        imageRepository.save(image);

        return "Add image success";
    }
    
    public String addUserImage(final String userId, final String filename){

        UserImage image = new UserImage();
        image.setProductId(Long.parseLong(userId));
        image.setPath(filename);
        userImageRepository.save(image);

        return "Add image success";
    }

    /* GROUPS */
    public List<ProductGroup> getGroups(){
        return groupRepository.findAll();
    }
    public ProductGroup getGroup(long id){
        return groupRepository.getOne(id);
    }
    public ProductGroup saveGroup(ProductGroup group){
        return groupRepository.save(group);
    }

    
    /* ORDERS */
    public List<Order> getOrders(){
        return orderRepository.findAll();
    }
    public Order getOrder(long id){
        return orderRepository.getOne(id);
    }
    public Order saveOrder(Order order){
        return orderRepository.save(order);
    }
}
