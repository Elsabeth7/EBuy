package com.proj.eBuyApp.service.impl;

import com.proj.eBuyApp.domain.Product;
import com.proj.eBuyApp.repository.ProductRepository;
import com.proj.eBuyApp.service.ProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;

@Service
@Transactional
public class ProductServiceImpl implements ProductService {

    @Autowired
    private ProductRepository productRepository;

    @Override
    public List<Product> findAll() {
     return (List<Product>) productRepository.findAll();
    }

    @Override
    public void add(Product product) {
        System.out.println(product.getId());
        Product product1 = productRepository.findOne(product.getId());
        if(product1 == null) {
            productRepository.save(product);
        }else {
            // set product into products
            product1.setName(product.getName());
        }
    }

    @Override
    public Product get(Long id) {
       return productRepository.findOne(id);
    }

    @Override
    public void updateProduct(Long id, Product product) throws Exception {
        Product product1 = productRepository.findOne(id);
        if(product1 == null) {
            throw new Exception("");
        }
        product1.setName(product.getName());
        product1.setPhoneNumber(product.getPhoneNumber());
        product1.setPrice(product.getPrice());
        product1.setDescription(product.getDescription());
        product1.setImagePath(product.getImagePath());
        product1.setProductNumber(product.getProductNumber());
    }

    //@Override
    /*public void updateProduct(Long id) {
        productRepository.updateProduct(id);
    }*/

    @Override
    public void delete(Long id) {
     productRepository.delete(id);
    }

    public List<Product> searchProduct(String chars) {
        List<Product> returnList = new ArrayList<>();

        for(Product product:productRepository.findAll()){

            if(product.getName().toLowerCase().contains(chars.toLowerCase())){
                returnList.add(product);

            }
        }

         Collections.sort(returnList, new Comparator<Product>() {
            @Override
            public int compare(Product p1, Product p2) {
                return p1.getName().compareToIgnoreCase(p2.getName());
            }
        });

        return returnList;
    }
}
