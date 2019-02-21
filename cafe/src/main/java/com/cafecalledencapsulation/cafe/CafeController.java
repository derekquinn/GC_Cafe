package com.cafecalledencapsulation.cafe;

import java.util.List;

//import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
//import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
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

// ADD A USER
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

// ADD AN ITEM / PRODUCT
	@RequestMapping("/add-item")

	public ModelAndView addItem() {

		return new ModelAndView("/add-item");
	}

	@PostMapping("/add-item")
	public ModelAndView submitCreateForm(Item aItem) {
		itemsDao.create(aItem);
		return new ModelAndView("redirect:/admin");
	}

// DELETE AN ITEM / PRODUCT

	@RequestMapping("/item/delete")
	public ModelAndView delete(@RequestParam("id") Long id) {
		itemsDao.delete(id);
		return new ModelAndView("redirect:/admin");
	}

// EDIT AN ITEM / PRODCUT

	@RequestMapping("/item/update")
	public ModelAndView showEditForm(@RequestParam("id") Long id) {
		ModelAndView mav = new ModelAndView("edit-item");
		mav.addObject("item", itemsDao.findById(id));
	//	mav.addObject("title", "Edit Food");
		return mav;
	}

	@PostMapping("/item/update")
	public ModelAndView submitEditForm(Item aItem) {
		itemsDao.update(aItem);
		return new ModelAndView("redirect:/food");
	}

}
