package net.abc.service;

import javax.servlet.http.HttpServletRequest;

import net.abc.vo.UserVO;

public interface UserService {

	void mailSendWithUserKey(UserVO user, HttpServletRequest request);

	String confirmEmail(UserVO user);

	void change_key(UserVO user);

	

}
