package com.srinivas.springboot.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class HelloServices {

	@GetMapping
	public String getMessage() {

		return "Service is running!";
	}

	@GetMapping("/{name}")
	public String getMessageName(@PathVariable String name) {

		return "Service is running!" + name;

	}

}
