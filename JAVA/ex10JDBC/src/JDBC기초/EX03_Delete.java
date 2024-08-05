package JDBC기초;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.Scanner;

public class EX03_Delete {

	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		
		Connection con=null;
		PreparedStatement psmt=null;
		
		System.out.print("이름: ");
		String name = sc.next();
		System.out.print("나이: ");
		int age = sc.nextInt();
		
		Student stu=new Student(name,age);
		
		
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			
			
			String id="hr";
			String pw="12345";
			String url="jdbc:oracle:thin:@localhost:1521:xe";
			
			con =DriverManager.getConnection(url,id,pw);
			
			
			
			String sql="DELETE FROM STUDENT WHERE NAME=? AND AGE=?";
			
			psmt=con.prepareStatement(sql);
			
			
			psmt.setString(1, stu.getName());
			psmt.setInt(2, stu.getAge());

			int cnt= psmt.executeUpdate();
			
			if(cnt>0) {
				System.out.println("추가 성공");
			}else {
				System.out.println("추가 실패");
			}
		
		}catch (SQLException e) {
			
			e.printStackTrace();
			System.out.println("권한 확인 실패");
			
		}catch (ClassNotFoundException e) {
			e.printStackTrace();
			System.out.println("동적로딩 실패");
			
		}finally {
			try {
				if(psmt!=null)
					psmt.close();	
				if(con!=null)
					con.close();
			} catch (SQLException e) {
						
					e.printStackTrace();
					System.out.println("자원반납 오류");
				}
		}
		
		
		sc.close();

	}

}
