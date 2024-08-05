package JDBC기초;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.Scanner;

public class EX02_Update {
	
	public static void main(String[] args) {
		//sc로 이름 나이 입력 받아서 정공을 수정해보자
		Scanner sc= new Scanner(System.in);
		
		
		PreparedStatement psmt=null;//지역변수에서 전역변수로 변환함
		Connection con= null;
		
		
		System.out.print("본인의 이름을 입력하세요:");
		String name = sc.next();
		System.out.print("본인의 나이를 입력하세요:");
		int age = sc.nextInt();
		System.out.print("수정할 전공을 입력하세요:");
		String major = sc.next();
		
		//student 자료형을 사용해 캡슐화 진행, 생성자 사용해 필드 3개 초기화
		//update student set major =? where name =? and age =?;
		
		Student stu=new Student(name,age,major);
		
		
		try {
			//1. 동적로딩
			Class.forName("oracle.jdbc.driver.OracleDriver");  
			/*oracle.jdbc에 있는 오라클 드라이버 경로 입력
			 * 예외상황이 발수있어 try~catch문을 이용*/
		
			
			//2.DB 연결 권한 확인
			String id="hr";
			String pw="12345";
			String url="jdbc:oracle:thin:@localhost:1521:xe";
			
			con=DriverManager.getConnection(url,id,pw);
			//변수에 담고, drivermanager한테 id,pw,url주면서 연결권한 확인,가져옴
	
			
			//3. 쿼리문 작성
			String sql="update student set major=? where name=? and age=?";
			
			
			//4.PreparedStatement에 쿼리문 담아줌
			psmt=con.prepareStatement(sql);
			//연결권한을 사용해 psmt에 쿼리문 담아주기
			//전역변수로 바꿔줘야함
	
			
			//?를 채워줄 인자가 있으면 채워줌	
			psmt.setString(1, stu.getMajor());
			psmt.setString(2, stu.getName());
			psmt.setInt(3, stu.getAge());
			
			
			
			int cnt= psmt.executeUpdate();
			//쿼리문을 DB로 전송하고 실행, 결과값 받아옴
			/*결과값: 내가 만든 쿼리문으로 영향을 받은 행의 여부를 int  자료형으로 가져옴
			 * 1: 영향받은 행 있음(실행 성공)
			 * 0,-1: 영향박은 행 없음(실행 실패)*/
		
			if(cnt>0) {
				System.out.println("추가 성공");
			}else {
				System.out.println("추가 실패");
			}
				
				
		
		}catch (SQLException e) { //연결실패 확인
			
			e.printStackTrace();
			System.out.println("권한 확인 실패");
			
			
		}catch (ClassNotFoundException e) { //1-1.ojdbc 경로확인, 오타 확인
			
			e.printStackTrace();
			System.out.println("동적로딩 실패");
			
		}finally {
			/*try~catch~finally
			 * finally 안쪽에 작성되는 코드는 무조건 한번 실행
			 * 자원 반납이 중간에 에러가 발생해도, try안에 코드가 실행되어도 마지막에 반드시 한번 실행
			 * close();
			 * 사용했던 자원을 역순으로 닫아줌
			 * preparedStatement-> connection
			 */
			try {//사용여부 확인 후 있으면 반납(변수값이 null인지 확인)
				if(psmt!=null)
					psmt.close();
				if(con!=null)
					con.close();
				
			} catch (SQLException e) {
				
				e.printStackTrace();
				System.out.println("자원반납 오류");
			}// try문 안에서 선언된 지역변수, try문 새로 생성해 다시 만듦
		}
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		sc.close();
		
	}
	
}
