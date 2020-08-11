package net.abc.controller;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import net.abc.service.UserService;
import net.abc.service.UserSha256;
import net.abc.vo.UserVO;

@Controller
public class membership {
	
	 @Autowired
	 private UserService user_Service;


	
	@GetMapping("/membership")
	public void membership() {
	}
	
	@GetMapping("/login")
	public void login() {
	}
	
	@PostMapping("/checkEmail")
	public String checkEmail(UserVO user,HttpServletRequest request, String e_mail, HttpServletResponse response_email) throws IOException{
		/*
		 * Random r = new Random(); int dice = r.nextInt(4589362) + 49311; //이메일로 받는
		 * 인증코드 부분 (난수)
		 */         
		/*
		 * String setfrom = "dlgkstjq623@gamil.com"; String tomail =
		 * request.getParameter("e_mail"); // 받는 사람 이메일 String title =
		 * "회원가입 인증 이메일 입니다."; // 제목
		 */         
      // userLogin.jsp에서 아이디기억하기 name값(remember) 가져오기
      // String user_check = request.getParameter("remember_userId");

 		// 비밀번호 암호화
 		String user_pw = user.getPassword();
 		user.setPassword(UserSha256.encrypt(user_pw));
		System.out.println("두번째:" + user.getPassword());
		// 회원가입 메서드
		//reg_service.userReg_service(user);
		// 인증 메일 보내기 메서드
		System.out.println(user.getEmail()+","+user.getUsername());
		user_Service.mailSendWithUserKey(user,request);

		return "redirect:/"; //메인사이트로 이동
	}
	
	@GetMapping("/MemberShip_email_ch")
	public String MemberShip_email_ch(UserVO user) {/*이메일인증확인버튼으로 전송된 email과 랜덤값인 key를 가져옴*/
		this.user_Service.change_key(user);
		return "redirect:/";/*나중에 메인사이트로 이동*/
	}
}





