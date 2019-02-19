package com.cafecalledencapsulation.cafe;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class CafeController {



	@RequestMapping("/")
	public ModelAndView showCafeHome() {

		ModelAndView mav = new ModelAndView("index");

		return mav;
	}

	@RequestMapping("/user-registration")

	public ModelAndView showUserRegistration() {
		return new ModelAndView("/user-registration");
	}

	@RequestMapping("/user-registration-result")
	public ModelAndView submitUserReg(User aUser) {

		return new ModelAndView("/user-registration-result");

	}

// post map to hide ssn and max data 
	
	@PostMapping("/user-registration-result") 
	
	public ModelAndView submitUserRegSecure(User aUser) {
		
		return new ModelAndView("user-registration-result");
	}

}