package net.xaduin.spring4.uploadwebfile.controller;

import javax.annotation.PostConstruct;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;


@Controller
@RequestMapping("/welcome")
public class WelcomeControler {

	@PostConstruct
	public void showInit() {
	   System.out.println("---- The Bean " + this.getClass().getName() + " it's initialized ----");
	}
	
	
	@RequestMapping(value = { "welcome", "index.html", "index.htm" })
	public ModelAndView welcome() {
		
		String message = "<br><div style='text-align:center;'>"
				+ "<h3>********** Hello World, Spring MVC Tutorial **********</h3><br/>This message is coming from WelcomeController.java </div><br/><br/><br/>";
		ModelAndView mav = new ModelAndView("welcome", "message", message);
		mav.addObject("requestMapping", "@RequestMapping('/welcome/index.htm')");
		return mav;
	}
	

	@RequestMapping("hi")
	public ModelAndView hi() { 
		
		return new ModelAndView("hi");
	}

}
