package com.info.springsecurity.model;

import lombok.Data;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import java.io.Serializable;

@Entity
@Data
public class Product implements Serializable {

//    private static final long serialVersionUID = 7156526077883281623L;

//    Logger logger = LoggerFactory.getLogger(Product.class);

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Long id;

    private String name;


}
