package mx.com.gs.controller;

import mx.com.gs.repository.UsuarioRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class UsuarioController {

    @Autowired
    private UsuarioRepository usuarioRepository;

    @GetMapping("/")
    public String viewHomePage(Model model) {
        model.addAttribute("usuarios", usuarioRepository.findAll());
        return "index";
    }


}
