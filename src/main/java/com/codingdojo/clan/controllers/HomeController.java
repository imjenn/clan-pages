package com.codingdojo.clan.controllers;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.codingdojo.clan.models.LoginUser;
import com.codingdojo.clan.models.User;
import com.codingdojo.clan.services.UserService;

@Controller
public class HomeController {

	@Autowired
	private UserService userServ;
	
	// Landing page
	@GetMapping("/")
	public String index() {
		return "index.jsp";
	}
	
	// Chat page
	@GetMapping(value="/chat", headers = "Connection!=Upgrade")
	public String chat() {
		return "chat.jsp";
	}
	
	// Display login and registration
	@GetMapping("/signin")
    public String index(Model model) {
        model.addAttribute("newUser", new User());
        model.addAttribute("newLogin", new LoginUser());
        return "login.jsp";
    }
	
	// Display all games
	@GetMapping("/games")
	public String games() {
		return "games.jsp";
	}
    
	// Action route for registration
    @PostMapping("/register")
    public String register(@Valid @ModelAttribute("newUser") User newUser, 
            BindingResult result, Model model, HttpSession session) {
        userServ.register(newUser, result);
        if(result.hasErrors()) {
            model.addAttribute("newLogin", new LoginUser());
            return "index.jsp";
        }
        session.setAttribute("user_id", newUser.getId());
        return "redirect:/home";
    }
    
    // Action route for login
    @PostMapping("/login")
    public String login(@Valid @ModelAttribute("newLogin") LoginUser newLogin, 
            BindingResult result, Model model, HttpSession session) {
        User user = userServ.login(newLogin, result);
        if(result.hasErrors()) {
            model.addAttribute("newUser", new User());
            return "index.jsp";
        }
        session.setAttribute("user_id", user.getId());
        return "redirect:/home";
    }
    
    // Logout
    @RequestMapping("/logout")
	public String reset(HttpSession session, Model model) {
		session.invalidate();
		return "redirect:/";
	}
}
