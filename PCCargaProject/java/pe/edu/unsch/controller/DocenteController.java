package pe.edu.unsch.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import pe.edu.unsch.services.DocenteService;

@Controller
@RequestMapping("docente")
public class DocenteController {
	
	@Autowired
	private DocenteService docenteService;
	
	
	@GetMapping("listar")
	public String index(Model model) {
		System.out.println("lista docente "+ docenteService.getDocentes() );
		model.addAttribute("listaDocente",docenteService.getDocentes());

		return "views/admin/home/index";

	}
}
	













