package 학생정보관리프로그램;

import java.util.Scanner;

public class Main {

	public static void main(String[] args) {
		// View:User Interface

		Scanner sc = new Scanner(System.in);

		while (true) {
			System.out.print("1.학생등록 2.학생전체조회 3.학생검색 4.학생정보수정 5.학생정보삭제 6.프로그램종료>>");
			int select = sc.nextInt();

			if (select == 1) {
				// 학생등록
				System.out.print("이름: ");
				String name = sc.next();
				System.out.print("나이: ");
				int age = sc.nextInt();
				System.out.print("성별: ");
				String gender = sc.next();
				System.out.print("전공: ");
				String major = sc.next();
				// 입력받은 데이터를 DTO자료형으로 바꿈

				StudentDTO dto = new StudentDTO(name, age, gender, major); //DB에 등록위해 컨트롤러의 인서트로 전달
				
				
				Controller con =new Controller();
				con.insert(dto);

			} else if (select == 2) {
				// 학생전체조회

			} else if (select == 3) {
				// 학생검색

			} else if (select == 4) {
				// 학생정보수정 --update
				System.out.print("이름: ");
				String name = sc.next();
				System.out.print("나이: ");
				int age = sc.nextInt();
				System.out.print("수정할 전공: ");
				String major = sc.next();
				StudentDTO dto = new StudentDTO(name, age, major);
				//dto자료형바꿈(캡슐화)
				Controller con=new Controller();
				con.update(dto);

			} else if (select == 5) {
				 //학생정보삭제
				System.out.print("이름: ");
				String name = sc.next();
				System.out.print("나이: ");
				int age = sc.nextInt();
				
				StudentDTO dto = new StudentDTO(name, age);
				//dto자료형바꿈(캡슐화)
				Controller con=new Controller();
				con.delete(dto);

			} else {
				System.out.println("프로그램 종료");
				break;
			}

		}

		sc.close();
	}

}
