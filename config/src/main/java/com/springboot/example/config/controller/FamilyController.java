package com.springboot.example.config.controller;

import com.springboot.example.config.domain.Person;
import lombok.Data;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import javax.annotation.Resource;
import java.util.HashMap;
import java.util.Map;

@Data
@RestController
public class FamilyController {

    @Resource
    private Person father;

    @Resource
    private Person mother;

    @Resource
    private Person son;

    @GetMapping("/family")
    public Map<String, Person> family() {
        HashMap<String, Person> result = new HashMap<>();
        result.put("father", father);
        result.put("mother", mother);
        result.put("son", son);

        return result;
    }
}
