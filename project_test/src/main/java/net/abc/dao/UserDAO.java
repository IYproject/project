package net.abc.dao;

import java.util.List;

import net.abc.vo.UserVO;

public interface UserDAO {

	void sendEmail(UserVO user);

	String confirmEmail(UserVO user);

	void change_key(UserVO user);

	List<UserVO> selectUser();

	void autoDelUser();

	void testDel();

}
