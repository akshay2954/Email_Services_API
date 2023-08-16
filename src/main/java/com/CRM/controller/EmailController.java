package com.CRM.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;

import org.springframework.web.bind.annotation.RequestParam;

import com.CRM.util.EmailServiceImpl;

@Controller
public class EmailController {
	
	
	@Autowired
	private EmailServiceImpl emailService;
	
	@PostMapping("/sendEmail")
	public String getEmailId(@RequestParam("email")String email, Model model) {
		model.addAttribute("email", email);
		return "compose_email";
	}
	
	@PostMapping("/triggerEmail")
	public String triggerEmail(com.CRM.dto.Email email, Model model) {
		emailService.sendEmail(email.getEmail(), email.getSubject(), email.getContent());
		model.addAttribute("msg","Email Sent Successfully.");
		return "compose_email";
	}

}
