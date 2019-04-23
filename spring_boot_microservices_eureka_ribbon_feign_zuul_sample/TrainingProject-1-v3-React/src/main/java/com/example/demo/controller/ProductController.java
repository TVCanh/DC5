package com.example.demo.controller;

import org.hibernate.Session;
//import org.hibernate.Session;
//import org.hibernate.SessionFactory;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.io.ClassPathResource;
import org.springframework.core.io.InputStreamResource;
import org.springframework.core.io.Resource;
import org.springframework.hateoas.ResourceSupport;
//import org.springframework.hateoas.Link;
//import org.springframework.hateoas.ResourceSupport;
import org.springframework.http.HttpHeaders;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.method.annotation.MvcUriComponentsBuilder;
import org.springframework.web.servlet.support.ServletUriComponentsBuilder;

import com.example.demo.Constant.Constant;
import com.example.demo.hateos.ProductResource;
import com.example.demo.model.Image;
import com.example.demo.model.Product;
import com.example.demo.model.User;
import com.example.demo.respository.ImageRepository;
import com.example.demo.security.services.EcommerceService;
import com.example.demo.storage.StorageService;


import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;
import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;

//import static org.springframework.hateoas.mvc.ControllerLinkBuilder.linkTo;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.stream.Collectors;

@RestController
@RequestMapping("/api/auth")
public class ProductController extends CoreController{
	
	@Autowired
    private EcommerceService ecommerceService;

    @Autowired
    private StorageService storageService;
    
    @Autowired
    private ImageRepository imageRepository;

    @PersistenceContext
    public EntityManager em;

    private static final Logger logger = LoggerFactory.getLogger(ProductController.class);
    List<String> files = new ArrayList<String>();
    

    private Constant constant;
    
    
    @Autowired
    private EcommerceService productService;

    @PostMapping("/{id}/uploadimage")
    public String handleFileUpload(@PathVariable("id") String id, @RequestParam("file") MultipartFile file) {

        // Relative path to the rootLocation in storageService
        String path = "/product-images/" + id;
        String filename = storageService.store(file, path, id);

        return ecommerceService.addProductImage(id, filename);
    }
    

    @GetMapping
    public List<ProductResource> index() {
        List<Product> res = ecommerceService.getProducts();
        List<ProductResource> output = new ArrayList<ProductResource>();
        res.forEach((p)->{
            ProductResource pr = new ProductResource(p);
            pr.add(createHateoasLink(p.getId()));

            output.add(pr);
        });
        return output;
    }

    @PostMapping
    public Product create(@RequestBody @Valid Product product){
        return ecommerceService.saveProduct(product);
    }

    @GetMapping("/{id}")
    public ResourceSupport view(@PathVariable("id") long id){
        Product p = ecommerceService.getProduct(id);

        ProductResource pr = new ProductResource(p);
        pr.add(createHateoasLink(p.getId()));

        return pr;
    }

    @PostMapping(value = "/{id}")
    public Product edit(@PathVariable("id") long id, @RequestBody @Valid Product product){

        Product updatedProduct = ecommerceService.getProduct(id);

        if(updatedProduct == null){
            return null;
        }

        updatedProduct.setName(product.getName());
        updatedProduct.setPrice(product.getPrice());
        //updatedProduct.setDescription(product.getDescription());

        return ecommerceService.saveProduct(updatedProduct);
    }

   // view list image of a product base on id
    @GetMapping("/{id}/images")
    public List<Image> viewImages(@PathVariable("id") String productId){
        List<Image> list = em.createQuery("FROM Image WHERE product_id = :product_id")
//        		.setLong("product_id", Long.parseLong(productId))
        		.setParameter("product_id", Long.parseLong(productId))
        		.getResultList();
        return list;
    }

    //serve image
    @GetMapping("/image/{id}")
    @ResponseBody
    public ResponseEntity<Resource> serveFile(@PathVariable("id") String id) {
    	
    	Image image = imageRepository.findByProductId(Long.parseLong(id))
				.orElseThrow(() -> new UsernameNotFoundException(
						"Product ID not found with ID : " + id));

        // Relative path to StorageProperties.rootLocation
        String path = "product-images/" + image.getProductId() + "/";

        Resource file = storageService.loadAsResource(path+image.getPath());
        String mimeType = "image/png";
        try {
            mimeType = file.getURL().openConnection().getContentType();
        } catch (IOException e){
            System.out.println("Can't get file mimeType. " + e.getMessage());
        }
        return ResponseEntity
                .ok()
//                .header(HttpHeaders.CONTENT_DISPOSITION, "attachment; filename=\""+file.getFilename()+"\"")
                .header(HttpHeaders.CONTENT_TYPE, mimeType)
                .body(file);
    }



    // Todo: add delete method

}