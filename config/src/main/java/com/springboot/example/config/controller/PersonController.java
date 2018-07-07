package com.springboot.example.config.controller;

import com.springboot.example.config.domain.Person;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class PersonController {

    @Autowired
    private Person person;

    @GetMapping("/person")
    String person() {
        System.out.println(person.getAge());
        System.out.println(person.getSex());
        return person.toString();
    }
}
