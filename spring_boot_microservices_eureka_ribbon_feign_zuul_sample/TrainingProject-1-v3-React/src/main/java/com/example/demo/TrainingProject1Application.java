package com.example.demo;

import javax.persistence.EntityManagerFactory;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.boot.CommandLineRunner;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.cloud.client.discovery.EnableDiscoveryClient;
import org.springframework.context.annotation.Bean;
import org.springframework.orm.jpa.vendor.HibernateJpaSessionFactoryBean;

import com.example.demo.storage.StorageService;

@SpringBootApplication
@EnableDiscoveryClient
public class TrainingProject1Application {

	public static void main(String[] args) {
		SpringApplication.run(TrainingProject1Application.class, args);
	}
}

