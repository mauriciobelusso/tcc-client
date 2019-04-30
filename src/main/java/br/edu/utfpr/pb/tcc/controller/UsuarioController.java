package br.edu.utfpr.pb.tcc.controller;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/usuario")
public class UsuarioController extends HttpServlet {
    private static final long serialVersionUID = 1L;

    @GetMapping(value = {"/", ""})
    private String listar(Model model, HttpServletRequest request) {
        return "usuario/list";
    }

    @GetMapping("/{id}")
    public String editar(@PathVariable Long id, Model model) {
        return "/usuario/form";
    }


    @GetMapping(value = "/register")
    public String novo() {
        return "/usuario/register";
    }

    @GetMapping(value = "/alterarSenha")
    public String alterarSenha() {
        return "/usuario/senha";
    }
}
