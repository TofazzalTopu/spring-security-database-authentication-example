package com.info.springsecurity.controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

public class SwaggerController {

    @RequestMapping(method = RequestMethod.GET, value = "/api/springsecurity")
    public String sayHello() {
        return "Swagger Hello World";
    }
}
