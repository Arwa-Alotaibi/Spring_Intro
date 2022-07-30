package com.arwa.omikuji;

import javax.servlet.http.HttpSession;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class OmikujiForm {

	@RequestMapping("/omikuji")
	public String index() {
		return "index.jsp";
	}
	
	
	
	
	@RequestMapping("/send" )
	public String send(
			@RequestParam(value="PickNumber") int PickNumber,
			@RequestParam(value="NameCity") String NameCity,
		
			@RequestParam(value="RealPerson") String RealPerson,
			
			@RequestParam(value="hobby") String hobby,
			
			@RequestParam(value="living") String living,
			
			@RequestParam(value="saysomething") String saysomething,
			HttpSession session) {
		
		
			session.setAttribute("PickNumber", PickNumber);
		
			session.setAttribute("NameCity", NameCity);
		
			session.setAttribute("RealPerson", RealPerson);

			session.setAttribute("hobby", hobby);

			session.setAttribute("living", living);

			session.setAttribute("saysomething", saysomething);
			

			return "redirect:/omikuji/show";
	}
	
	@RequestMapping("/omikuji/show")
	public String Display() {
		return "display.jsp";
	}
	
}




