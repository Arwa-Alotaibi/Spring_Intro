package Daikichi.Routes;

import org.springframework.web.bind.annotation.RequestMapping;

import org.springframework.web.bind.annotation.RestController;



@RestController
public class DaikichiController {

	//Have an http GET request to 'http://localhost:8080/daikichi' display text that says 'Welcome!'
    @RequestMapping("/daikichi" )
	public String Welcome() {
		return "Welcome :) !";
	}
    //Have an http GET request to 'http://localhost:8080/daikichi/today' 
    //display text that says 'Today you will find luck in all your endeavors!'
    @RequestMapping("/daikichi/today")
    public String Display() {
    	return "Today you will find luck in all your endeavors!:)";
    }
    //Have an http GET request to 'http://localhost:8080/daikichi/tomorrow' 
    //display text that says 'Tomorrow, an opportunity will arise, so be sure to be open to new ideas!'
    @RequestMapping("/daikichi/tomorrow")
    public String display_2() {
    	return "Tomorrow, an opportunity will arise, so be sure to be open to new ideas :)!";
    }

   

}
