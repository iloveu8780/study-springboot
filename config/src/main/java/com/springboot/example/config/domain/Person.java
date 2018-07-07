package com.springboot.example.config.domain;

import lombok.Data;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.boot.context.properties.ConfigurationProperties;
import org.springframework.stereotype.Component;

@Component
@ConfigurationProperties(prefix = "example.person")
@Data
public class Person {

//    @Value("${example.person.age}")
    private int age;
//    @Value("${example.person.sex}")
    private String sex;

    private String name;
}
