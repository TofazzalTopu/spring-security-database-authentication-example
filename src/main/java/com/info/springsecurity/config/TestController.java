package com.info.springsecurity.config;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;

import java.security.SecureRandom;

public class TestController {


    /*@Autowired
    private static PasswordEncoder passwordEncoder;
    */
    private static final String SALT = "salt";
//    private static final String SALT = "exp-managert-salt";

//    @Bean
    public static BCryptPasswordEncoder passwordEncoder(){
        return new BCryptPasswordEncoder(11, new SecureRandom(SALT.getBytes()));
    }

    public static void main(String[] args){
        passwordEncoder().encode("tofazzal");
        System.out.println(passwordEncoder().encode("123456"));
        System.out.println(passwordEncoder().matches("123456", "$2a$12$DcuqccaIWeKWnknf.KVeq.M.kKHiDC4cwS4T6AgKVO3X0b26xW3kO"));
    }


}
