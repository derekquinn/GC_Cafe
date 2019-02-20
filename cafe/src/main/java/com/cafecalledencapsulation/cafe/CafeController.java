package com.cafecalledencapsulation.cafe;

import java.util.List;

//import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
//import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;


@Controller
public class CafeController {

	@Autowired
	private ItemsDao itemsDao;
	
	@Autowired
	private UsersDao usersDao;

	@RequestMapping("/")
	public ModelAndView showCafeHome() {

		
		List<Item> listOfItems = itemsDao.findAll();
		ModelAndView mav = new ModelAndView("index", "items", listOfItems);
		return mav;
	}

	@RequestMapping("/user-registration")

	public ModelAndView showUserRegistration() {
		
		return new ModelAndView("/user-registration");
	}

	@RequestMapping("/user-registration-result")
	public ModelAndView submitUserReg(User aUser) {
		usersDao.create(aUser);

		return new ModelAndView("/user-registration-result");

	}
	@RequestMapping("/admin")

	public ModelAndView showAdmin() {
		
		List<Item> listOfItems = itemsDao.findAll();
		ModelAndView mav = new ModelAndView("admin", "items", listOfItems);
		
		return mav;
	}
	
	


// post map to hide ssn and max data 

//	@PostMapping("/user-registration-result")
//
//	public ModelAndView submitUserRegSecure(User aUser) {
//
//		return new ModelAndView("user-registration-result");
//	}

}