package com.info.springsecurity.controller;

import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.context.request.RequestContextHolder;
import org.springframework.web.context.request.ServletRequestAttributes;

import javax.servlet.http.HttpSession;

@RestController
@RequestMapping(value = "/test")
public class SessionInfoController {

    @RequestMapping(value = { "/view" }, method = RequestMethod.GET)
    public String view(Model model,  HttpSession session) {
        session.getAttribute("rana");
        return "view";
    }

    @RequestMapping(value = { "/info" }, method = RequestMethod.GET)
    public String getUserInfo(Model model, HttpSession session) {
        ServletRequestAttributes attr = (ServletRequestAttributes) RequestContextHolder.currentRequestAttributes();
        attr.getSessionId();
        session.setAttribute("rana", "rana");

        Object principal = SecurityContextHolder.getContext().getAuthentication().getPrincipal();
        if (principal instanceof UserDetails) {
            String username = ((UserDetails)principal).getUsername();
        } else {
            String username = principal.toString();
        }
        Authentication authentication;
        return "Check session info and current user info";
    }

}
