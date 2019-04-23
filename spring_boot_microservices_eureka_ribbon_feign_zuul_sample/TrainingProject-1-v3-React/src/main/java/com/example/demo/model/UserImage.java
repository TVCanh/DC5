package com.example.demo.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;


@Entity
@Table(name="user_images")
public class UserImage {
    private long id;
    private long userId;
    private String path;

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    @Column(name = "user_id")
    public long getProductId() {
        return userId;
    }

    public void setProductId(long userId) {
        this.userId = userId;
    }

    @Column(name = "path")
    public String getPath() {
        return path;
    }

    public void setPath(String path) {
        this.path = path;
    }
//    @ManyToOne
//    private Product product;
//    @JoinColumn(name = "product_id")
////    @JsonBackReference(value = "product_reference")
//    public Product getProduct() {
//        return product;
//    }
//
//    public void setProduct(Product product) {
//        this.product = product;
//    }
}
