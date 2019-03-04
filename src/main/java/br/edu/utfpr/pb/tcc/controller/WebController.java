package br.edu.utfpr.pb.tcc.controller;

import javax.servlet.http.HttpServlet;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/")
public class WebController extends HttpServlet {

	private static final long serialVersionUID = 1L;

	@GetMapping({"/",""})
    private String index() {
        return "index";
    }
	
	@GetMapping({"/Forbidden","/Forbidden/"})
	private String notAuthorized() {
		return "403";
	}

	@GetMapping({"/notFound","/notFound/"})
	private String notFound() {
		return "404";
	}
	
	@GetMapping({"/blank","/blank/"})
	private String blank() {
		return "blank";
	}
}
