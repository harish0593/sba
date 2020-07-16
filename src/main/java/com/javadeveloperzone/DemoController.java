package com.javadeveloperzone;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class DemoController {
    @RequestMapping(value = "hello")
    public String hello(){
        return "Welcome to CI/CD of Spring boot Gradle Example keel CD commit changes example";
    }
}
