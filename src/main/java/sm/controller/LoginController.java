package sm.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/")
public class LoginController {
	public LoginController() {}
	@RequestMapping("/")
	public String login() {return "index";}
	
	@RequestMapping("/header")
	public String header() {return "header";}
}
