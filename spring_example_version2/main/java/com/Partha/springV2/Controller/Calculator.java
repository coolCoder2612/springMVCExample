package com.Partha.springV2.Controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.View;

@Controller
public class Calculator {
	
	@RequestMapping(value="/", method=RequestMethod.GET)
	public String start() {
//		System.out.println("the start of everything..");
		return "Partha_home";
	}

	@RequestMapping(value="/calculator",method=RequestMethod.GET)
	public ModelAndView calculatormethod(HttpServletRequest request, HttpServletResponse response) {
		
		System.out.println("you are in calculator method..");
		ModelAndView mv = new ModelAndView();
		String message = "this is an example of how to pass on values from spring controller to view";
		mv.addObject("message", message);
		try {
		int i = Integer.parseInt(request.getParameter("t1"));
		int j = Integer.parseInt(request.getParameter("t2"));
		int k = i+j;
		/*
		model.addAttribute("message",message);
		model.addAttribute("value", k);
		*/
		mv.setViewName("Finalresult");
		mv.addObject("value", k);
		}catch(NumberFormatException e) {
			String error_message = "please enter proper numbers!!";
			mv.setViewName("Finalresult");
			mv.addObject("error_message", error_message);
		}
		return mv;
	}
}
