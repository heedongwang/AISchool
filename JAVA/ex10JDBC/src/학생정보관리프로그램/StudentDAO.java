package 학생정보관리프로그램;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class StudentDAO {
	// DAO: DataBase Access Object
	Connection conn = null;
	PreparedStatement psmt = null;
	ResultSet rs=null;
	int cnt=0;

	// 데이터베이스 연결 기능: dbOpen()
	public void dbOpen() {
		// 1.동적로딩 2.연결권한
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");

			String id = "hr";
			String pw = "12345";
			String url = "jdbc:oracle:thin:@localhost:1521:xe";

			conn = DriverManager.getConnection(url, id, pw);

		} catch (ClassNotFoundException e) {

			e.printStackTrace();
			System.out.println("동적로딩 실패");
		} catch (SQLException e) {

			e.printStackTrace();
			System.out.println("권한 확인 실패");
		}

	}

	// 자원반납 -dbClose()
	public void dbClose() {
		try {
			if( rs!=null)  //사용된적이 없으면 반납 안함
				rs.close();
			if (psmt != null)
				psmt.close();
			if (conn != null)
				conn.close();

		} catch (SQLException e) {
			e.printStackTrace();
			System.out.println("동적로딩 실패");
		}
	}

	public int insert(StudentDTO dto) {// DTO를 DB에 저장, 학생등록
		// 사용자가 입력했던 name,age..= dto에 들어있는 상태
		// jebc=>1.동적로딩 2.연결권한 3.쿼리문작성 4.?인자 채움(psmt) 5.쿼리문실행/결과값처리 6.자원반납
		
		try {
			dbOpen();

			String sql = "INSERT INTO STUDENT VALUES(?,?,?,?)";

			psmt = conn.prepareStatement(sql);

			psmt.setString(1, dto.getName());
			psmt.setInt(2, dto.getAge());
			psmt.setString(3, dto.getGender());
			psmt.setString(4, dto.getMajor());
			// dto에 데이터가 담겨있으므로

			cnt = psmt.executeUpdate();
			// cnt: DB와 연결후 결과값, 뷰에게 다시 알려줘야함

		} catch (SQLException e) {
			e.printStackTrace();
			System.out.println("권한 확인 실패");
		} finally {
			dbClose();

		}

		return cnt;

	}
	
	public int update(StudentDTO dto) {
		
		try {
			dbOpen();
			
			String sql="UPDATE STUDENT SET MAJOR=? WHERE NAME=? and AGE=? ";
			psmt=conn.prepareStatement(sql);
			psmt.setString(1, dto.getMajor());
			psmt.setString(2, dto.getName());
			psmt.setInt(3, dto.getAge());
			
			cnt= psmt.executeUpdate();
			
		}catch (SQLException e) {
			e.printStackTrace();
			System.out.println("권한 확인 실패");
		} finally {
			dbClose();

		}

		
		return cnt;
	}
	
	
	
	
	public int delete(StudentDTO dto) {
		
		try {
			dbOpen();
			
			String sql="DELETE FROM STUDENT WHERE NAME=? AND AGE=?";
			
			psmt=conn.prepareStatement(sql);
			
			psmt.setString(1,dto.getName());
			psmt.setInt(2,dto.getAge());
			
			 cnt= psmt.executeUpdate();
		}catch (SQLException e) {
			e.printStackTrace();
			System.out.println("권한 확인 실패");
		} finally {
			dbClose();

		}

		return cnt;
	}
	
	
	
	

};