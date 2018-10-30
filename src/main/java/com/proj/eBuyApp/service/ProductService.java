package com.proj.eBuyApp.service;

import com.proj.eBuyApp.domain.Product;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public interface ProductService {

   List<Product> findAll();

    void add(Product product);

    Product get(Long id);

    List<Product> searchProduct(String chars);

    void updateProduct(Long id,Product product) throws Exception;
    void delete(Long id);
}
