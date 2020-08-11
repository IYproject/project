package net.abc.service;

import java.util.Random;

import javax.mail.Message.RecipientType;
import javax.mail.MessagingException;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.stereotype.Service;

//import net.abc.dao.UserDaoInterface;
import net.abc.dao.UserDAO;
import net.abc.vo.UserVO;

@Service
public class UserServiceImpl implements UserService {


	@Autowired
	private JavaMailSender mailSender;
	@Autowired
	private SqlSession sqlSession;
	//private UserDaoInterface userDao;

	@Autowired 
	private UserDAO UserDao;
	
	private String init() {
		Random ran = new Random();
		StringBuffer sb = new StringBuffer();
		int num = 0;

		do {
			num = ran.nextInt(75) + 48;
			if ((num >= 48 && num <= 57) || (num >= 65 && num <= 90) || (num >= 97 && num <= 122)) {
				sb.append((char) num);
			} else {
				continue;
			}

		} while (sb.length() < size);
		if (lowerCheck) {
			return sb.toString().toLowerCase();
		}
		return sb.toString();
	}

	// 난수를 이용한 키 생성
	private boolean lowerCheck;
	private int size;

	public String getKey(boolean lowerCheck, int size) {
		this.lowerCheck = lowerCheck;
		this.size = size;
		return init();
	}

	@Override
	public void mailSendWithUserKey(UserVO user, HttpServletRequest request) {
		String key = getKey(false, 20);
		user.setUser_key(key);
		System.out.printf(user.getEmail(),user.getUsername(),user.getUser_key(),user.getCell_phone());
		this.UserDao.sendEmail(user);
		//this.sqlSession.insert("Tem_email",user);

		MimeMessage mail = mailSender.createMimeMessage(); 
		String htmlStr = "<h2>안녕하세요 MS :p 혜아~ 입니다!</h2><br><br>" 
				+ "<h3>" + user.getUsername() + "님</h3>" + "<p>인증하기 버튼을 누르시면 로그인을 하실 수 있습니다 : " 
				+ "<a href='http://localhost:8011/controller/MemberShip_email_ch?email="+ user.getEmail() +"&user_key="+key+"'>인증하기</a></p>"
				+ "(혹시 잘못 전달된 메일이라면 이 이메일을 무시하셔도 됩니다)";
		try {
			mail.setSubject("[본인인증] IY : 인연 인증메일입니다", "utf-8");//이메일 제목
			mail.setText(htmlStr, "utf-8", "html");//본문 내용
			mail.addRecipient(RecipientType.TO, new InternetAddress(user.getEmail()));
			mailSender.send(mail);
		} catch (MessagingException e) {
			e.printStackTrace();
		}
	}

	@Override
	public String confirmEmail(UserVO User) {
		return this.UserDao.confirmEmail(User);
	}

	@Override
	public void change_key(UserVO user) {
		this.UserDao.change_key(user);
		
	}



}
