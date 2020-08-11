package net.abc.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import net.abc.vo.UserVO;

@Repository
public class UserDAOImpl implements UserDAO {
	@Autowired
	private SqlSession sqlSession;

	@Override
	public void sendEmail(UserVO user) {
		this.sqlSession.insert("Tem_email",user);
	}

	@Override
	public String confirmEmail(UserVO user) {
		return this.sqlSession.selectOne("conf_Email", user);
	}

	@Override
	public void change_key(UserVO user) {
		this.sqlSession.update("ch_key", user);
	}

	@Override
	public List<UserVO> selectUser() {
		return this.sqlSession.selectList("user_list");
	}

	@Override
	public void autoDelUser() {
		this.sqlSession.delete("auto_del");
	}

	@Override
	public void testDel() {
		this.sqlSession.delete("test_del");
	}
}
