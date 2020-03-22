package com.info.springsecurity.controller;

import com.info.springsecurity.model.User;
import com.info.springsecurity.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.cache.annotation.CacheEvict;
import org.springframework.cache.annotation.Cacheable;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

@Controller
public class HomeController {

    @Autowired
    UserService userService;

    @RequestMapping(value = "/login", method = RequestMethod.GET)
    public String login(Model model, String error, String logout) {
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("login/login");
        if (error != null)
            model.addAttribute("error", "Your username and password is invalid.");

        if (logout != null)
            model.addAttribute("message", "You have been logged out successfully.");

        return "/login/login";
    }

    @RequestMapping(value = {"/welcome"}, method = RequestMethod.GET)
    public String welcome(Model model) {
        return "login/welcome";
    }

    @RequestMapping(value = {"/success"}, method = RequestMethod.GET)
    public String success(Model model) {
        return "login/success";
    }

    @CacheEvict(value = "getAllUser")
    @RequestMapping(value = {"/signup"}, method = RequestMethod.GET)
    public String main(Model model) {
        return "signup/sign-here";
    }

    @RequestMapping(value = {"/userList"}, method = RequestMethod.GET)
    public ModelAndView user(Model model) {
        List<User> userList = userService.getUserList();
        model.addAttribute("userList", userList);

        ModelAndView view = new ModelAndView("login/view");
        view.addObject("userList", userList);
        return view;
    }

    @RequestMapping(value = {"/index"}, method = RequestMethod.GET)
    public String index(Model model) {
        return "index";
    }

    @RequestMapping(value = "/executeSaveUser", method = RequestMethod.POST)
    public String executeSaveUser(Model model, @ModelAttribute("user") User user) {

        try {

            BCryptPasswordEncoder encoder = new BCryptPasswordEncoder();
            user.setPassword(encoder.encode(user.getPassword()));
            boolean isSaved = userService.saveUser(user);

            if (isSaved) {
                model.addAttribute("user", user);
                model.addAttribute("message", "User has been saved successfully");
                return "redirect:/userList";
            } else {
                return "redirect:/sign-up";
            }

        } catch (Exception e) {
            e.printStackTrace();
            return "redirect:/sign-up";
        }
    }

    @RequestMapping(value = {"/viewSwaggerAndActuator"}, method = RequestMethod.GET)
    public String showMore(Model model) {
        return "showMore";
    }

    @Cacheable(value = "user")
    @RequestMapping(value = {"/allUser"}, method = RequestMethod.GET)
    public String allUser(Model model) {
        try {
            System.out.println("show from Caching..");
            Thread.sleep(5000);
        } catch (Exception e) {
            e.printStackTrace();
        }
//        List<User> userList = userService.getUserList();
//        model.addAttribute("userList", userList);
        System.out.println("Did not show from Caching");

//        ModelAndView view = new ModelAndView("login/view");
//        view.addObject("userList", userList);
        return "string";
    }

}
