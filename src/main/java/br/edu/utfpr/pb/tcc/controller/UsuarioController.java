package br.edu.utfpr.pb.tcc.controller;

import br.edu.utfpr.pb.tcc.model.Usuario;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;

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
        Usuario usuario = new Usuario();
        usuario.setId(id);
        model.addAttribute("usuario", usuario);
        return "/usuario/form";
    }


    @GetMapping(value = "/novo")
    public String novo(Model model) {
        model.addAttribute("usuario", new Usuario());
        return "/usuario/form";
    }

    @GetMapping(value = "/alterarSenha")
    public String alterarSenha() {
        return "/usuario/senha";
    }
}
