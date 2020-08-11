package net.abc.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import net.abc.service.UserService;
import net.abc.vo.UserVO;

@RestController
public class RestProjectController {

	@Autowired
	private UserService user_Service;

	@RequestMapping(value="/confirmEmail",method=RequestMethod.POST)
	public ResponseEntity<String> confiem_email(@RequestBody UserVO user) {
		ResponseEntity<String> entity=null;

		try { 
		String result = this.user_Service.confirmEmail(user);
		System.out.println(result);
		if(result == null){ 
			entity = new ResponseEntity<String>("YES",HttpStatus.OK);
		} else { 
			entity = new ResponseEntity<String>("NO",HttpStatus.OK);
			}

		}catch(Exception e) { e.printStackTrace();entity = new
				ResponseEntity<String>(e.getMessage(),HttpStatus.BAD_REQUEST); }

		/* entity = new ResponseEntity<String>("YES",HttpStatus.OK); */
		return entity;
	}
}














