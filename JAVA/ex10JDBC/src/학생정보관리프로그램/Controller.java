package 학생정보관리프로그램;

public class Controller {
	
	//학생등록 진행 = 뷰에서 입력한 데이터 등록위한 
	public void insert(StudentDTO dto) {
		StudentDAO dao=new StudentDAO();
		int cnt= dao.insert(dto);  //cnt 받아옴
		
		if(cnt>0) {
			System.out.println("학생추가 성공");
		}else {
			System.out.println("학생추가 실패");
		}
	}
	
	public void update(StudentDTO dto) {
		StudentDAO dao=new StudentDAO();
		int cnt= dao.update(dto);  //cnt 받아옴
		
		if(cnt>0) {
			System.out.println("학생수정성공");
		}else {
			System.out.println("학생수정 실패");
		}
	}
	
	
	public void delete(StudentDTO dto) {
		StudentDAO dao=new StudentDAO();
		int cnt= dao.delete(dto);  //cnt 받아옴
		
		if(cnt>0) {
			System.out.println("학생삭제 성공");
		}else {
			System.out.println("학생삭제 실패");
		}
	}
}
