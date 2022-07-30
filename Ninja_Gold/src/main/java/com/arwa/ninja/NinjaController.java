package com.arwa.ninja;

import java.text.SimpleDateFormat;



import java.util.ArrayList;
import java.util.Date;
import java.util.Random;
import javax.servlet.http.HttpSession;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class NinjaController {

    @RequestMapping("/Gold")
	public String index(HttpSession Session){
    			ArrayList<String> activities = new ArrayList<String>(); 
				// If the TotalGold is not already in session
				if (Session.getAttribute("TotalGold") == null) {
				// Use setAttribute to initialize the TotalGold in session
					Session.setAttribute("TotalGold", 0);	
				}
				if (Session.getAttribute("activities") == null) {
				Session.setAttribute("activities",activities );	
				}
				return "index.jsp";
				
	}
	@RequestMapping("/Money")
	public String ProcessMoney(
			@RequestParam(value="Gold") String Gold  ,HttpSession Session) {
		ArrayList<String> Allactivities = (ArrayList<String>)Session.getAttribute("activities");
			//retrieve the TotalGold using getAttribute
			int TotalGold = (int) Session.getAttribute("TotalGold");
				//create random object
        		Random random = new Random();
        		int alltotal =0;
        		Date date = new Date();
		        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("MMMMM  F yyyy HH:mm a");
				String current_Date = simpleDateFormat.format(date);
				
			if (Gold.equals("Farm")) {

				int min = 10 ;
				int max = 20 ;
				alltotal = random.nextInt(max - min) + min; 
					Allactivities.add("You entered a Farm and eraned  "+ alltotal +" gold "+ current_Date);
			}
			
			else if (Gold.equals("Cave")) {
				int min = 5 ;
				int max = 10;
				alltotal =  random.nextInt(max - min) + min;
				
					Allactivities.add("You entered a Cave and eraned  "+ alltotal +" gold "+ current_Date);

				
			}
			
			else if (Gold.equals("House")) {
				int min = 2;
				int max = 5;
				alltotal = random.nextInt(max - min) + min ;
					Allactivities.add("You entered a House and eraned  "+ alltotal +" gold "+ current_Date);

				
				
			}
			else if (Gold.equals("Casino")) {   
				alltotal= random.nextInt(50 - 0) + 0 ;
				if (alltotal > 0) {
					Allactivities.add("You entered a Casino and eraned  "+ alltotal +" gold "+ current_Date);

				}
				else {
					Allactivities.add("You entered a Casino and lost  "+ alltotal +" gold..Ouch "+ current_Date);

				}
			}
			int sum  = alltotal + TotalGold ;
			
			// Updating Session Attributes :)
			Session.setAttribute("TotalGold",sum);
			Session.setAttribute("activities", Allactivities);
			return "redirect:/Gold";
			}
	
			// Create a reset button 
			@RequestMapping("/reset")
			public String reset(HttpSession session ) {
		
				session.setAttribute("TotalGold", 0);
				session.setAttribute("activities", null);


				return "redirect:/Gold";

		
	}	
}


