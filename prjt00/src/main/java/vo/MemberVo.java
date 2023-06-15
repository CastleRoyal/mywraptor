package vo;

import java.util.Date;

public class MemberVo {
	//회원가입 정보화면 필드들
	private String member_id;
	private String member_pw;
	private String nickname;
	private String member_name;
	private int gender;
	private String phone;
	private String email;
	
	
	//DB에 저장되는 멤버 테이블 필드
	private int member_idx;
	//회원가입일
	private Date join_date;
	//회원정보 수정일
	private Date update_date;
	//회원탈퇴일
	private Date cancel_date;
	//회원탈퇴여부
	private boolean cancel_or_not;
	//회원등급
	private int grade;
	public String getMember_id() {
		return member_id;
	}
	public void setMember_id(String member_id) {
		this.member_id = member_id;
	}
	public String getMember_pw() {
		return member_pw;
	}
	public void setMember_pw(String member_pw) {
		this.member_pw = member_pw;
	}
	public String getNickname() {
		return nickname;
	}
	public void setNickname(String nickname) {
		this.nickname = nickname;
	}
	public String getMember_name() {
		return member_name;
	}
	public void setMember_name(String member_name) {
		this.member_name = member_name;
	}
	public int getGender() {
		return gender;
	}
	public void setGender(int gender) {
		this.gender = gender;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public int getMember_idx() {
		return member_idx;
	}
	public void setMember_idx(int member_idx) {
		this.member_idx = member_idx;
	}
	public Date getJoin_date() {
		return join_date;
	}
	public void setJoin_date(Date join_date) {
		this.join_date = join_date;
	}
	public Date getUpdate_date() {
		return update_date;
	}
	public void setUpdate_date(Date update_date) {
		this.update_date = update_date;
	}
	public Date getCancel_date() {
		return cancel_date;
	}
	public void setCancel_date(Date cancel_date) {
		this.cancel_date = cancel_date;
	}
	public boolean isCancel_or_not() {
		return cancel_or_not;
	}
	public void setCancel_or_not(boolean cancel_or_not) {
		this.cancel_or_not = cancel_or_not;
	}
	public int getGrade() {
		return grade;
	}
	public void setGrade(int grade) {
		this.grade = grade;
	}
	
	

	
	
	
	
	
	
	
	
}
