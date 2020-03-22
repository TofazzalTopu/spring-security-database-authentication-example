package com.info.springsecurity;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.cache.annotation.Cacheable;
import org.springframework.cache.annotation.EnableCaching;

@SpringBootApplication
@EnableCaching
public class Application {

    public static void main(String[] args) {
        SpringApplication.run(Application.class, args);
    }

	/*@Override
	public void run(String... args) throws Exception {
		userRepository.save(new User("rana", bCryptPasswordEncoder.encode("rana")));
	}*/
}


