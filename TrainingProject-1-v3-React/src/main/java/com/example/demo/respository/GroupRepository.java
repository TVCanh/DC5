package com.example.demo.respository;


import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import com.example.demo.model.ProductGroup;

@Repository("groupRepository")
public interface GroupRepository extends JpaRepository<ProductGroup, Long> { }