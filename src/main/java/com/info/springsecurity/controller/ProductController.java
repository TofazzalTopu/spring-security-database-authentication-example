package com.info.springsecurity.controller;


import com.info.springsecurity.model.Product;
import com.info.springsecurity.repository.ProductRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.cache.annotation.Cacheable;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import java.util.Optional;

@RestController
@RequestMapping(value = "/product")
public class ProductController {

    @Autowired
    ProductRepository productRepository;

    @Cacheable(value = "product", key = "#productId", unless = "#result.followers < 12000")
    @RequestMapping(value = "/{productId}", method = RequestMethod.GET)
    public Product getUser(@PathVariable Long productId) {
//        Log.info("Getting user with ID {}.", userId);
        Optional<Product> product = productRepository.findById(productId);
        return product.get();
    }
}
