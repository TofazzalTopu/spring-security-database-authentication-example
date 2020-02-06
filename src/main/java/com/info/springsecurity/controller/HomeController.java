package com.info.springsecurity.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class HomeController {

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

    @RequestMapping(value = {"/test"}, method = RequestMethod.GET)
    public String test(Model model) {
        return "login/test";
    }

    @RequestMapping(value = {"/log"}, method = RequestMethod.GET)
    public String log(Model model) {
        return "login/login";
    }

}
