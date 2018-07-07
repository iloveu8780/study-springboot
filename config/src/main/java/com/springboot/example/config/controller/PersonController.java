package com.springboot.example.config.controller;

import com.springboot.example.config.domain.Person;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import javax.annotation.Resource;

@RestController
public class PersonController {

    @Resource(name = "son")
    private Person person;

    @GetMapping("/person")
    public String person() {
        System.out.println(person.getAge());
        System.out.println(person.getSex());
        return person.toString();
    }
}
