package com.proj.eBuyApp.controller;

import com.proj.eBuyApp.domain.Product;
import com.proj.eBuyApp.service.ProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
public class RESTAPIController {
    @Autowired
    private ProductService productService;

    @RequestMapping(value = "/apiProducts", method = RequestMethod.GET)
    public @ResponseBody List<Product> getProductsAPI() {
        return (List<Product>) productService.findAll();
    }

    @RequestMapping(value = "/apiProduct/{id}")
    public @ResponseBody Product getProductAPI(@PathVariable("id") Long productId) {

        return productService.get(productId);
    }

}
