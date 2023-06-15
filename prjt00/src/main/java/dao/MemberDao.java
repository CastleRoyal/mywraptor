package dao;

import java.sql.SQLException;

import common.DBConnectionPool;
import vo.MemberVo;

public class MemberDao extends DBConnectionPool {
	
	//아이디 중복체크
	
	public int checkId(String member_id) {
		int result = 0; //false/ 동일한 아이디가 없을 때 반환값
		//0 : false , 1 : true
		//1이외의 숫자면 다 false 1만 아니면 상관없음
		
		String sql = "select member_id from cmember where member_id=?";
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, member_id);
			rs = pstmt.executeQuery();
			
			if(rs.next()) {
				result = 1; //true/ 동일한 아이디가 있을 때 반환값	
			}
			
		}catch(SQLException e) {
			e.printStackTrace();
		}finally {
			close();
		}
		
		return result;
	}
	
	
	//닉네임 중복체크
	
	public int checkNickname(String nickname) {
		int result = 0; //false/ 동일한 아이디가 없을 때 반환값
		//0 : false , 1 : true
		//1이외의 숫자면 다 false 1만 아니면 상관없음
		
		String sql = "select nickname from cmember where nickname=?";
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, nickname);
			rs = pstmt.executeQuery();
			
			if(rs.next()) {
				result = 1; //true/ 동일한 아이디가 있을 때 반환값	
			}
			
		}catch(SQLException e) {
			e.printStackTrace();
		}finally {
			close();
		}
		
		return result;
	}
	
	
	public int checkNicknamee(String nickname) {
		int result2 = 0; //false/ 동일한 아이디가 없을 때 반환값
		//0 : false , 1 : true
		//1이외의 숫자면 다 false 1만 아니면 상관없음
		
		String sql = "select nickname from cmember where nickname=?";
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, nickname);
			rs = pstmt.executeQuery();
			
			if(rs.next()) {
				result2 = 1; //true/ 동일한 아이디가 있을 때 반환값	
			}
			
		}catch(SQLException e) {
			e.printStackTrace();
		}finally {
			close();
		}
		
		return result2;
	}
	
	
	
	
	
	//회원가입 처리
		public int join(MemberVo vo) {
			int result = 0; //회원가입 실패 시 반환값
			
			try {
				String sql = "insert into cmember (member_idx, member_id, member_pw, nickname, "
							+ "member_name, gender, phone, email) values (cmember_seq.nextval,?,?,?,?,?,?,?)";
				pstmt = conn.prepareStatement(sql);
				pstmt.setString(1, vo.getMember_id());
				pstmt.setString(2, vo.getMember_pw());
				pstmt.setString(3, vo.getNickname());
				pstmt.setString(4, vo.getMember_name());
				pstmt.setInt(5, vo.getGender());
				pstmt.setString(6, vo.getPhone());
				pstmt.setString(7, vo.getEmail());
				
				result = pstmt.executeUpdate();
				//result값이 1이면 회원가입 성공
				
			}catch(SQLException e) {
				e.printStackTrace();
			}finally {
				close();
			}
			
			return result;
		}
			

		
			public MemberVo login(String member_id, String member_pw) {
				MemberVo member = null;//같은 아이디와 비밀번호가 없을 때 반환값
				
				String sql = "select * from cmember where member_id=? and member_pw=? and cancel_or_not=1";
				try {
					pstmt = conn.prepareStatement(sql);
					pstmt.setString(1,  member_id);
					pstmt.setString(2,  member_pw);
					rs = pstmt.executeQuery();
					
					if(rs.next()) {
						member = new MemberVo();
						member.setMember_idx(rs.getInt("member_idx"));
						member.setMember_id(rs.getString("member_id"));
						member.setMember_pw(rs.getString("member_pw"));
						member.setNickname(rs.getString("nickname"));
						member.setMember_name(rs.getString("member_name"));
						member.setGender(rs.getInt("gender"));
						member.setPhone(rs.getString("phone"));
						member.setEmail(rs.getString("email"));
						member.setGrade(rs.getInt("grade"));
						member.setJoin_date(rs.getDate("join_date"));
						member.setUpdate_date(rs.getDate("update_date"));
						member.setCancel_date(rs.getDate("cancel_date"));
						member.setCancel_or_not(rs.getBoolean("cancel_or_not"));
						
					}
				}catch(Exception e) {
					e.printStackTrace();
				}finally {
					close();
				}
				
				return member;
			}
			
			
			public MemberVo update(MemberVo vo) {
				MemberVo member = null;
				
				try {
					String sql = "update cmember set member_pw=?, nickname=?, member_name=?, gender=?, "
							    + "phone=?, email=?, update_date=sysdate where member_id=?";
					pstmt = conn.prepareStatement(sql);
					pstmt.setString(1, vo.getMember_pw());
					pstmt.setString(2, vo.getNickname());
					pstmt.setString(3, vo.getMember_name());
					pstmt.setInt(4, vo.getGender());
					pstmt.setString(5, vo.getPhone());
					pstmt.setString(6, vo.getEmail());
					pstmt.setString(7, vo.getMember_id());
					int rowCount = pstmt.executeUpdate();
					
					if(rowCount == 1) {
						System.out.println("업데이트 성공");
					}
					
					//세션객체에 담기위해 수정된 회원정보를 조회해서 MemberVo객체에 담음
					sql = "select * from cmember where member_id=?";
					
					pstmt = conn.prepareStatement(sql);
					pstmt.setString(1, vo.getMember_id());
					rs = pstmt.executeQuery();
					
					if(rs.next()) {
						member = new MemberVo();
						member.setMember_idx(rs.getInt("member_idx"));
						member.setMember_id(rs.getString("member_id"));
						member.setMember_pw(rs.getString("member_pw"));
						member.setNickname(rs.getString("nickname"));
						member.setMember_name(rs.getString("member_name"));
						member.setGender(rs.getInt("gender"));
						member.setPhone(rs.getString("phone"));
						member.setEmail(rs.getString("email"));
						member.setGrade(rs.getInt("grade"));
						member.setJoin_date(rs.getDate("join_date"));
						member.setUpdate_date(rs.getDate("update_date"));
						member.setCancel_date(rs.getDate("cancel_date"));
						member.setCancel_or_not(rs.getBoolean("cancel_or_not"));
						
					}
					
				
				}catch(Exception e) {
					e.printStackTrace();
				}finally {
					close();
				}
				
				return member;
			}
			
			
			public int cancel(int member_idx) {
				int result = 0; //회원탈퇴 실패시 반환값
				
				try {
					String sql = "update cmember set cancel_or_not=-1, cancel_date=sysdate where member_idx=?";
					pstmt = conn.prepareStatement(sql);
					pstmt.setInt(1, member_idx);
					
					result = pstmt.executeUpdate();//업데이트 성공시 1 반환
					
				}catch(Exception e) {
					e.printStackTrace();
				}finally {
					close();
				}
				return result;
			}
			
			
			
			
			
			
		}
	
	
	
	

