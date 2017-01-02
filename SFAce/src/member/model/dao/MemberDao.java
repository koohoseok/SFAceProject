package member.model.dao;

import static common.JDBCTemplete.*;
import java.sql.*;
import member.model.vo.*;

public class MemberDao {
	public MemberDao(){}
	
	public Member loginCheck(Connection con, String userId, String userPwd){
		Member member = null;
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		
		String query ="select username from member where userid = ? and userpwd = ?";
		
		try {
			pstmt = con.prepareStatement(query);
			pstmt.setString(1, userId);
			pstmt.setString(2, userPwd);
			
			rset = pstmt.executeQuery();
			
			if(rset.next()){
				member = new Member(userId, userPwd, rset.getString(1));
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally{
			close(rset);
			close(pstmt);
		}
		
		return member;
	}

	public int insertMember(Connection con, Member member){
		int result =0;
		PreparedStatement pstmt  =null;
		
		String query = "insert into member values(?,?,?,?,?,?)";
		try{
			pstmt = con.prepareStatement(query);
			pstmt.setString(1, member.getUserId());
			pstmt.setString(2, member.getUserPwd());
			pstmt.setString(3, member.getUserName());
			pstmt.setString(4, member.getEmail());
			pstmt.setString(5, String.valueOf(member.getGender()));
			pstmt.setString(6, member.getHobby());
			
			result = pstmt.executeUpdate();
			
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			close(pstmt);
		}
		
		return result;
				
	}
}
