package member.model.vo;

import java.sql.Date;

public class Member {
	//filed
	private String userId;
	private String userPwd;
	private String userName;
	private String email;
	private char gender;
	private String hobby;
	
	
	public Member(){}
	
	public Member(String userID, String userPwd, String userName){
		this.userId = userID;
		this.userPwd = userPwd;
		this.userName = userName;
	}

	public Member(String userId, String userPwd, String userName, String email, char gender, String hobby) {
		super();
		this.userId = userId;
		this.userPwd = userPwd;
		this.userName = userName;
		this.email = email;
		this.gender = gender;
		this.hobby = hobby;
	}

	public String getUserId() {
		return userId;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}

	public String getUserPwd() {
		return userPwd;
	}

	public void setUserPwd(String userPwd) {
		this.userPwd = userPwd;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}


	public char getGender() {
		return gender;
	}

	public void setGender(char gender) {
		this.gender = gender;
	}
	
	public String getHobby() {
		return hobby;
	}

	public void setHobby(String hobby) {
		this.hobby = hobby;
	}

	
	@Override
	public String toString(){
		return this.userId+", "+this.userPwd+", "+this.userName+", "+this.email+", "+
				", "+this.gender+", "+this.hobby;
		
	}
}
