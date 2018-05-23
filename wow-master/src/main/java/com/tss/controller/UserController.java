package com.tss.controller;

import java.util.Date;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.tss.model.User;
import com.tss.service.UserService;

@Controller
public class UserController {
	@Autowired
	private UserService userService;

	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String loadHomePage() {

		return "login";
	}

	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public String userLoginPage() {

		return "login";
	}

	@RequestMapping(value = "/login", method = RequestMethod.POST)
	public String loadLoginPage(Model model) {
		return "screen_master";
	}

	@RequestMapping(value = "/userHome", method = RequestMethod.GET)
	public String loadUserHomePage() {
		return "screen_master";
	}

	@RequestMapping(value = "/addUser", method = RequestMethod.GET)
	public String loadUserManagementPage(Model model) {
		model.addAttribute("user", new User());
		return "add_user";
	}

	@RequestMapping(value = "/deleteUser", method = RequestMethod.GET)
	public String deleteUser( @RequestParam String userId, Model model) {
		if(userId.isEmpty()) {
			model.addAttribute("users", userService.getAllUser());
			model.addAttribute("errorMessage", "Not find user record.");
		}else {
			
			model.addAttribute("message", "User have deleted successfully.");
			User user = new User();
			user.setUserId(Integer.parseInt(userId));
			model.addAttribute("users", userService.delete(userService.findByUser(user)));
		}
		return "view_users";
	}
	
	@RequestMapping(value = "/updateUser", method = RequestMethod.GET)
	public String updateUserLoadPage(@ModelAttribute User user, Model model) {
		if (user != null) {
			model.addAttribute("user", userService.findByUser(user));
			model.addAttribute("message", "find user record.");
//			model.addAttribute("users", userService.getAllUser());
			return "update_user";
		} else {
			model.addAttribute("user", new User());
			model.addAttribute("errorMessage", "User record not found.");
			model.addAttribute("users", userService.getAllUser());
		}
		return "view_users";
	}

	@RequestMapping(value = "/updateUser", method = RequestMethod.POST)
	public String updateUserPage(@ModelAttribute User user, Model model) {
		if (user != null) {
			
			User u = userService.findByUser(user);
			user.setRegisterDate(u.getRegisterDate());
			userService.update(user);
			model.addAttribute("message", "update user successfully.");
			model.addAttribute("users", userService.getAllUser());
		} else {
			model.addAttribute("user", new User());
			model.addAttribute("users", userService.getAllUser());
			model.addAttribute("errorMessage", "Not update user record.");
		}
		return "view_users";
	}

	@RequestMapping(value = "/addUser", method = RequestMethod.POST)
	public String loadUserManagementPage(@ModelAttribute User user, Model model) {
		if (user != null) {
			user.setRegisterDate(new Date());
			user.setStatus(0);
			userService.save(user);
			model.addAttribute("message", "User have added successfully.");
		} else {
			model.addAttribute("user", new User());
			model.addAttribute("errorMessage", "Somthing is wrong.");
		}

		return "add_user";
	}

	@RequestMapping(value = "/createGroup", method = RequestMethod.GET)
	public String createGroupPage() {
		return "create_group";
	}

	@RequestMapping(value = "/addLocation", method = RequestMethod.GET)
	public String addLocationPage() {
		return "add_location";
	}

	@RequestMapping(value = "/updatePassword", method = RequestMethod.GET)
	public String updateUserPasswordPage() {
		return "update_user_password";
	}

	@RequestMapping(value = "/viewUsers", method = RequestMethod.GET)
	public String viewUsersPage(Model model) {
		model.addAttribute("users", userService.getAllUser());
		return "view_users";
	}

}
