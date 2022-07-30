package hello.human;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class HelloHuman {
	
    @RequestMapping("/")
    public String Human_name(@RequestParam(value="name" ,required = false) String SearchName, @RequestParam(value="LastName" ,required = false) String laname){
    	if(SearchName == null) {
        	return "Hello Human :)" ;
    	}
    	else if (laname == null) {
    		return "Hello :)  " + SearchName ; 
    	}
    	else {
    		return "Hello :)  "   +SearchName+" " +laname ; 

    	}
    	
    }

}
