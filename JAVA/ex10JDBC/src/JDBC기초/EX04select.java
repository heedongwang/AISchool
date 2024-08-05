package JDBC기초;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class EX04select {

	public static void main(String[] args) {
		//실행시켰을 때 DB에 있는 전체 데이터를 조회할 수 있도록 만듦
		//selct * from student
		
		Connection con=null;
		PreparedStatement psmt=null;
		 ResultSet rs=null;
		
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			
			
			
			String id="hr";
			String pw="12345";
			String url="jdbc:oracle:thin:@localhost:1521:xe";
			
			 con= DriverManager.getConnection(url,id,pw);
			 
			 String sql="SELECT * FROM student";
			 
			 psmt=con.prepareStatement(sql);
			 
			 //select문: executeQuery()이룡
			 rs= psmt.executeQuery();
			 //resultSet: 결과값=> DB의 테이블 형태 데이터=> 자바에서 사용가능한 테이블 형태로 받아오는 자료형
			 
			 
			  System.out.println("이름 "+"나이 "+"성별 "+"전공 ");
			  
			 while(rs.next()) {
				 //true 일동안 반복, 행 가져오기 반복
				 String name= rs.getString("name");
				 int age=rs.getInt("age");
				 String gender=rs.getString("gender");
				 String major=rs.getString("major");
				 
				
				 System.out.println(name+" "+age+" "+gender+" "+major);

			 }
			
			
			
			
			
			
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
			System.out.println("동적로딩 실패");
		} catch (SQLException e) {
			
			e.printStackTrace();
			System.out.println("권한 확인 실패");
		}finally {
			//rs-psmt-con 순서
			try {
				if(rs!=null)
					rs.close();
				if(psmt!=null)
					psmt.close();
				if(con!=null)
					con.close();
				
			} catch (SQLException e) {
				
				e.printStackTrace();
				System.out.println("자원반납 오류");
			}
		}
		
	}

}
