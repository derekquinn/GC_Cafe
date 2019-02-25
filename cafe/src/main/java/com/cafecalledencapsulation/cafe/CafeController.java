package com.cafecalledencapsulation.cafe;

import java.util.List;

import javax.servlet.http.HttpSession;

//import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttribute;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import com.cafecalledencapsulation.cafe.dao.ItemsDao;
import com.cafecalledencapsulation.cafe.dao.UsersDao;

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
	
// LOGIN 
	
	@RequestMapping("/user-login")

	public ModelAndView showLogin() {

		return new ModelAndView("/user-login");
	}

	@PostMapping("/user-login")
	// get the username and password from the form when it's submitted.
	public ModelAndView submitLoginForm(
			@RequestParam("email") String email,
			@RequestParam("password") String password,
			HttpSession session, RedirectAttributes redir) {
		// Find the matching user.
		User aUser = usersDao.findByEmail(email);
		if (aUser == null || !password.equals(aUser.getPassword())) {
			// If the user or password don't match, display an error message.
			ModelAndView mav = new ModelAndView("user-login");
			mav.addObject("message", "Incorrect username or password.");
			return mav;
		}
		
		// On successful login, add the user to the session.
		session.setAttribute("user", aUser);
		
		// A flash message will only show on the very next page. Then it will go away.
		// It is useful with redirects since you can't add attributes to the mav.
		redir.addFlashAttribute("message", "Logged in.");
		return new ModelAndView("redirect:/");
	}

// ADD A USER
	@RequestMapping("/user-registration")

	public ModelAndView showUserRegistration() {

		return new ModelAndView("/user-registration");
	}
//
//	@RequestMapping("/user-registration-result")
//	public ModelAndView submitUserReg(User aUser) {
//		usersDao.create(aUser);
//
//		return new ModelAndView("/user-registration-result");
//
//	}

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
		// mav.addObject("title", "Edit Food");
		return mav;
	}

	@PostMapping("/item/update")
	public ModelAndView submitEditForm(Item aItem) {
		itemsDao.update(aItem);
		return new ModelAndView("redirect:/admin");
	}

	////// USER SESSIONS

	// Use @SessionAttribute to get item from session
	@RequestMapping("/user-registration-result")
	public ModelAndView showEditProfile(@SessionAttribute(name = "profile", required = false) User aUser) {
		return new ModelAndView("user-registration-result", "user", aUser);
	}

	// Use HttpSession to set an attribute on the session
	@PostMapping("/user-registration-result")
	public ModelAndView submitEditProfile(User aUser, @RequestParam("confirm-password") String confirmPassword,
			HttpSession session, RedirectAttributes redir) {

		User existingUser = usersDao.findByEmail(aUser.getEmail());

		if (existingUser != null) {
			// If user already exists, display an error message.
			return new ModelAndView("user-registration", "message", "A user with that username already exists.");
		}

		if (!confirmPassword.equals(aUser.getPassword())) {
			// If the user or passwords don't match, display an error message.
			return new ModelAndView("user-registration", "message", "Passwords do not match.");
		}

		session.setAttribute("profile", aUser);
		usersDao.create(aUser);
		redir.addFlashAttribute("message", "Thanks for signing up!");
		return new ModelAndView("redirect:/");

	}

}