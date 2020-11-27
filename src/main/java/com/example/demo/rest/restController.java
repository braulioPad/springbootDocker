package com.example.demo.rest;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class restController {
	
	@GetMapping("/hello")
    public String hello() {
		return "hello";
	}

}
