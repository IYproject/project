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
		 * Random r = new Random(); int dice = r.nextInt(4589362) + 49311; //�̸��Ϸ� �޴�
		 * �����ڵ� �κ� (����)
		 */         
		/*
		 * String setfrom = "dlgkstjq623@gamil.com"; String tomail =
		 * request.getParameter("e_mail"); // �޴� ��� �̸��� String title =
		 * "ȸ������ ���� �̸��� �Դϴ�."; // ����
		 */         
      // userLogin.jsp���� ���̵����ϱ� name��(remember) ��������
      // String user_check = request.getParameter("remember_userId");

 		// ��й�ȣ ��ȣȭ
 		String user_pw = user.getPassword();
 		user.setPassword(UserSha256.encrypt(user_pw));
		System.out.println("�ι�°:" + user.getPassword());
		// ȸ������ �޼���
		//reg_service.userReg_service(user);
		// ���� ���� ������ �޼���
		System.out.println(user.getEmail()+","+user.getUsername());
		user_Service.mailSendWithUserKey(user,request);

		return "redirect:/"; //���λ���Ʈ�� �̵�
	}
	
	@GetMapping("/MemberShip_email_ch")
	public String MemberShip_email_ch(UserVO user) {/*�̸�������Ȯ�ι�ư���� ���۵� email�� �������� key�� ������*/
		this.user_Service.change_key(user);
		return "redirect:/";/*���߿� ���λ���Ʈ�� �̵�*/
	}
}





