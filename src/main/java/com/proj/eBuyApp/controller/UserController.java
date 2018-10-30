package com.proj.eBuyApp.controller;

import com.proj.eBuyApp.domain.User;
import com.proj.eBuyApp.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import javax.validation.Valid;
import java.util.List;

@Controller
public class UserController {

    @Autowired
    private UserService userService;

    @RequestMapping(value="/addUserForm", method = RequestMethod.GET)
    public String addUserForm(@ModelAttribute("user") User user){
        return "addUser";
    }


    @RequestMapping(value="/addUser", method=RequestMethod.POST)
    public String addUser(@Valid @ModelAttribute("user") User user, BindingResult bindingResult, RedirectAttributes redirectAttributes){
        if(bindingResult.hasErrors()){
            return "addUser";
        }
        userService.add(user);
        redirectAttributes.addFlashAttribute("user", user);
        return "redirect:userDetail";
    }

    @RequestMapping(value = "/userDetail", method = RequestMethod.GET)
    public String userList(){
        return "userDetail";
    }

    @RequestMapping(value="/userList", method = RequestMethod.GET)
    public String getUsers(Model model){
        model.addAttribute("users", userService.findAll());
        return "userList";
    }

    @RequestMapping(value="/deleteUser/{id}", method = RequestMethod.GET)
    public String deleteProduct(@PathVariable("id") long userId, Model model){
        userService.delete(userId);
        return "redirect:/userList";
    }

}
