package com.mycomp;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class TestPageController {

	
	@RequestMapping(value= "/testVypis")
	public String testVypis() {
		return "Hello world";
	}
}
