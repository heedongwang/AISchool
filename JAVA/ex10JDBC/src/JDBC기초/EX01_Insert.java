package JDBC기초;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.Scanner;

public class EX01_Insert {

	public static void main(String[] args) throws ClassNotFoundException {
		// 사용자로부터 이름, 나이, 성별, 학과 입력 받아 DB에 저장

		Scanner sc = new Scanner(System.in);

		System.out.print("이름: ");
		String name = sc.next();
		System.out.print("나이: ");
		int age = sc.nextInt();
		System.out.print("성별: ");
		String gender = sc.next();
		System.out.print("학과:");
		String major = sc.next();
		
		//4개의 데이터를 student라는 하나의 자료형 으로 묶음
		Student stu=new Student(name,age,gender,major);
		
		//동적로딩: 실행을 시키면 자료형이 결정되는 것
		
		
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			

		 
		//기울임꼴 형태의 코드: static형태
		
		//Syntax Error(문법에러)		Exception(예외상황)
		//try~catch~finally:예외상황 처리 문법
		
		
		//DB연결 권한 확인 준비물: id, pw,url
			String id="hr";
			String pw="12345";
			String url="jdbc:oracle:thin:@localhost:1521:xe";
		//jdbc:oracle:thin  -오라클 thin 드라이버
		//@localhost- 컴퓨터 ip주소를 가져와 주는 키오드
		//1521- port번호
		//xe:오라클 db의 별명	
			Connection con =DriverManager.getConnection(url,id,pw);
		
		
		//divermanager import
		//connection import
		//con  연결 권한
		
			
			
		//3.쿼리문 준비
			String sql="INSERT INTO STUDENT VALUES(?,?,?,?)";
		//?: 사용자가 입력한 값인데 아직 모르기 때문에 
		
			PreparedStatement psmt=con.prepareStatement(sql);
		//DB로 쿼리문을 가지고 이동하는 객체
		//?채우는 작업
		
			psmt.setString(1, stu.getName());
			psmt.setInt(2, stu.getAge());
			psmt.setString(3, stu.getGender());
			psmt.setString(4,stu.getMajor());
		
			int cnt= psmt.executeUpdate();
			//executeUpdate:쿼리문을 디비로 이동시켜 실행, 결과값을 받아옴
			//테이블에 영향을 받은 행의 유무에 int 자료형으로 값을 가져옴
		
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
			
			/*OracleDriver
			 * 	ojdbc.jar파일이 적용이 안되었거나
			 *  "" 경로가 잘못되었다*/
		}
		
		
		//DriverManager import
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
	
		sc.close();
	}

}
