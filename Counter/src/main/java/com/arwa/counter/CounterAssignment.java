package com.arwa.counter;
import javax.servlet.http.HttpSession;

import org.springframework.web.bind.annotation.RequestMapping;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;

@Controller
public class CounterAssignment {
	
	//assigning a key-value pair using setAttribute
	
	//retrieve that value later passing the same key to the getAttribute
	@RequestMapping("/your_server")
	public String index(HttpSession session ){
		
		session.setAttribute("name", "user");
		return "index.jsp";
	}
	
	
	
	@RequestMapping("/your_server/counter")
	public String DisplayCounter(HttpSession session, Model model) {
		if (session.getAttribute("counter") == null) {
			//how many times a user has visited your site. You could initialize that
			session.setAttribute("counter", 0);
		}
		
		else {
		// increment the count by 1 using getAttribute and setAttribute
			// retrieve the count using getAttribute 
			Integer current_counter = (Integer) session.getAttribute("counter");
			current_counter = current_counter+ 1 ;
			session.setAttribute("counter", current_counter);
			model.addAttribute("counter", current_counter);
		}
		
		return "Create_display_counter.jsp";
		
	}

	// NINJA BONUS: Create a third page that will increment the counter by 2 
	@RequestMapping("/increment")

	public String increment_counter_two (HttpSession session , Model model) {
		// increment the count by 2 using getAttribute and setAttribute
		Integer current_counter = (Integer) session.getAttribute("counter");
		current_counter = current_counter + 2 ;
		session.setAttribute("counter", current_counter);
		model.addAttribute("counter", current_counter);
		
		return "increment_two.jsp";
		
	}
	//NINJA BONUS: Create a reset button to set the counter back to zero
	@RequestMapping("/reset")
	public String reset(HttpSession session ) {
		
		session.setAttribute("counter", 0);

		return "Create_display_counter.jsp";

		
	}
	
		
	
	}
	
	
	


