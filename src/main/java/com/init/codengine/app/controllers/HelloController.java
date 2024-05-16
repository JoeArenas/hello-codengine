package com.init.codengine.app.controllers;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.Map;

@RestController
public class HelloController {

    @GetMapping("api/codengine/say-hello")
    public Map<String, String> sayHello() {
        return Map.of("message", "hola mundo desde codengine");
    }
}
