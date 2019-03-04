package br.edu.utfpr.pb.tcc.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServlet;

@Controller
@RequestMapping("/")
public class IndexController extends HttpServlet {

	private static final long serialVersionUID = 1L;

	@GetMapping({"/",""})
    private String showForm(Model model) {
        return "index";
    }
}
