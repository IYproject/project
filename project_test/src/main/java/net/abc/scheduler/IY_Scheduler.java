package net.abc.scheduler;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Component;

import net.abc.dao.UserDAO;
import net.abc.vo.UserVO;

@Component
public class IY_Scheduler {
	
	@Autowired 
	private UserDAO UserDao;
	
	@Scheduled(cron="0 0 12 * * *")
	public void autoDelete() {
		this.UserDao.autoDelUser();
		System.out.println("1일이상의 인증부재 계정삭제 완료");
	}
	
}
