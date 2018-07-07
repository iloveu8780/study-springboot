package com.springboot.example.config.domain;

import lombok.Data;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Configurable;
import org.springframework.boot.context.properties.ConfigurationProperties;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.stereotype.Component;


@Data
@Component
@Configuration
@ConfigurationProperties("example.family.father")
public class Family {

//    private Map<String, String> fatherMap;

    @Bean(name = "father")
    @ConfigurationProperties("example.family.father")
    public Person father() {
        return new Person();
    }

    @Bean(name = "mother")
    @ConfigurationProperties("example.family.mother")
    public Person mother() {
        return new Person();
    }

    @Bean(name = "son")
    @ConfigurationProperties("example.family.son")
    public Person son() {
        return new Person();
    }
}

