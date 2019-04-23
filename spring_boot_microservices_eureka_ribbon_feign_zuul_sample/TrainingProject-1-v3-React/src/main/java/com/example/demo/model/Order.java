package com.example.demo.model;
import com.fasterxml.jackson.annotation.JsonFormat;
import com.fasterxml.jackson.annotation.JsonManagedReference;
import javax.persistence.*;

import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;

@Entity
@Table(name = "orders")
public class Order {
    private long id;
    private String name;
    private String address;
    private String phone;
    private double totalPrice;
    
    @JsonFormat(pattern = "dd/MM/yyyy")
    private LocalDate dateCreated;
//    
//    @Temporal(TemporalType.TIMESTAMP) 
//    private String created;

    private List<OrderItem> items = new ArrayList<OrderItem>();

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getAddress() {
        return address;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }
    public String getPhone() {
        return phone;
    }

    public void setAddress(String address) {
        this.address = address;
    }


    @Column(name = "total_price")
    public double getTotalPrice() {
        return totalPrice;
    }

    public void setTotalPrice(double totalPrice) {
        this.totalPrice = totalPrice;
    }
//    public String getCreated() {
//        return created;
//    }
//
//    public void setCreated(String created) {
//        this.created = created;
//    }
    
    public LocalDate getDateCreated() {
        return dateCreated;
    }

    public void setDateCreated(LocalDate dateCreated) {
        this.dateCreated = dateCreated;
    }

    @OneToMany(mappedBy = "order", fetch = FetchType.EAGER, cascade = CascadeType.ALL)
    @JsonManagedReference
//    @JsonIgnore
    public List<OrderItem> getItems() {
        return items;
    }

    public void setItems(List<OrderItem> items) {
        this.items = items;
    }

}
