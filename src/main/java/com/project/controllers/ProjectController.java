package com.project.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class ProjectController {

	@GetMapping("/personas")
	public ModelAndView indexIntranet() {
		return new ModelAndView("personas");
		
	}
	@GetMapping("/resultados")
	public ModelAndView resultados() {
		return new ModelAndView("resultados");
		
	}
	//@RequestMapping(value="/resultados", method=RequestMethod.GET)
	
	
}
