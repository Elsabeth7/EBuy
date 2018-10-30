package com.proj.eBuyApp.controller;
import com.proj.eBuyApp.domain.Product;
import com.proj.eBuyApp.domain.User;
import com.proj.eBuyApp.service.ProductService;
import com.proj.eBuyApp.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import javax.jws.WebParam;
import javax.servlet.ServletContext;
import javax.validation.Valid;
import java.io.File;
import java.util.List;
@Controller
public class ProductController {
    @Autowired
    private ProductService productService;
    @Autowired
    private UserService userService;

    @Autowired
    ServletContext servletContext;

    @RequestMapping(value="/addProductForm", method = RequestMethod.GET)
    public String addProductForm(@ModelAttribute("product") Product product, Model model){
        List<User> users = userService.findAll();
        model.addAttribute("users", users);
        return "addProduct";
    }

    @RequestMapping(value="/addProduct", method = RequestMethod.POST)
    public String addProduct(@Valid @ModelAttribute("product") Product product, BindingResult bindingResult, RedirectAttributes redirectAttributes, Model model){
        if(bindingResult.hasErrors()){
            List<User> users = userService.findAll();
            model.addAttribute("users", users);
            return "addProduct";
        }

        MultipartFile productImage = product.getImage();
        String rootDirectory = servletContext.getRealPath("/");

        if (productImage != null && !productImage.isEmpty()) {
            try {
                String fileName = product.getName() + ".png";
                String path = "\\resources\\images\\" + fileName;
                productImage.transferTo(new File(rootDirectory + path));
                product.setImagePath(fileName);
            } catch (Exception e) {
                throw new RuntimeException("Product Image saving failed", e);
            }
        }

        productService.add(product);
        redirectAttributes.addFlashAttribute("product", product);
        return "redirect:productDetail";
    }

    @RequestMapping(value = "/productDetail", method = RequestMethod.GET)
    public String showProductDetail(){
        return "productDetail";
    }



    @RequestMapping(value="/productList", method =RequestMethod.GET)
    public String getProductList(Model model){
       List<Product> productList= productService.findAll();
     model.addAttribute("products", productList);
        return "productList";
    }

    @RequestMapping(value="/deleteProduct/{id}", method = RequestMethod.GET)
    public String deleteProduct(@PathVariable("id") long productId, Model model){
        productService.delete(productId);
        return "redirect:/productList";
    }


    @RequestMapping(value="/updateProduct/{id}", method = RequestMethod.GET)
    public String updateProduct(@PathVariable("id") long id,@ModelAttribute("product") Product product, Model model){
        model.addAttribute("product", productService.get(id));
        List<User> users = userService.findAll();
        model.addAttribute("users", users);
        return "updateProduct";
    }

    @RequestMapping(value="/updateProduct/{id}", method = RequestMethod.POST)
    public String updateProduct(@PathVariable("id") long id,@ModelAttribute("product") Product product, Model model, RedirectAttributes redirectAttributes){
        try {
            MultipartFile productImage = product.getImage();
            String rootDirectory = servletContext.getRealPath("/");

            if (productImage != null && !productImage.isEmpty()) {
                try {
                    String fileName = product.getName() + ".png";
                    String path = "\\resources\\images\\" + fileName;
                    productImage.transferTo(new File(rootDirectory + path));
                    product.setImagePath(fileName);
                } catch (Exception e) {
                    throw new RuntimeException("Product Image saving failed", e);
                }
            }
            productService.updateProduct(id,product);
            model.addAttribute("editProduct", product);
            return "redirect:/productDetail";
        } catch (Exception e) {
            e.printStackTrace();
        }
        return "addProductForm";
    }

    @RequestMapping(value="/search",method = RequestMethod.GET)
    public @ResponseBody List<Product> searchProduct(@RequestParam("searchKey") String searchKey){
        return productService.searchProduct(searchKey);
    }

    @RequestMapping(value = "/productInfo/{id}", method = RequestMethod.GET)
    public String showProductDetailById(@PathVariable("id") long id,Model model){
        model.addAttribute("product", productService.get(id));
        return "productDetail";
    }


}
