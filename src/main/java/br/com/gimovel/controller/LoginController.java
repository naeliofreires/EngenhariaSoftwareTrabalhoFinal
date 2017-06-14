package br.com.gimovel.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class LoginController {

	@RequestMapping("login")
	String login(){
		return "/users/login_usuario";
	}
}
