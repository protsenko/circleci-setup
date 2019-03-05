package io.github.protsenko.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class FakeController {

    @GetMapping("/")
    public String home() {
        return "Hello, world!";
    }
}
