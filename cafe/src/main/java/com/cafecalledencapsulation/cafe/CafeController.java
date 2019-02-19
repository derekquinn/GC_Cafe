package com.cafecalledencapsulation.cafe;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class CafeController {

// this is the first controller that tells us where the home page lives, I made this method on February 18, 2019 under the instruction of David Wolverton praise be upon him and his legacy

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
		
		return new ModelAndView("redirect:/user-registration-result");
	}

}
