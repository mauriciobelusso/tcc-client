package br.edu.utfpr.pb.tcc.controller;

import javax.servlet.http.HttpServlet;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/login")
public class LoginController extends HttpServlet {

	private static final long serialVersionUID = 1L;

	@GetMapping({"","/"})
    private String login(Model model) {	
        return "login";
    }
	
	@GetMapping("/forgot-password")
    private String forgotPassword() {
        return "forgot-password";
    }
}
