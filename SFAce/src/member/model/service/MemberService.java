package member.model.service;

import static common.JDBCTemplete.*;
import java.sql.*;

import member.model.dao.MemberDao;
import member.model.vo.Member;

public class MemberService {
	public MemberService(){}
	
	public Member loginCheck(String userId, String userPwd){
		Connection con = getConnection();
		Member loginUser = new MemberDao().loginCheck(con, userId, userPwd);
		close(con);
		
		return loginUser;
	}

	public int insertMember(Member member){
		Connection con = getConnection();
		int result = new MemberDao().insertMember(con, member);
		if(result > 0){
			commit(con);
		}
		else{
			rollback(con);
		}
		close(con);
		
		return result;
		
	}

}
