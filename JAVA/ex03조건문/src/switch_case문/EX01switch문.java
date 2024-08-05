package switch_case문;

public class EX01switch문 {

	public static void main(String[] args) {
//		ctrl+/:전체주석
//		switch(변수) {
//		case 값1 :
//			변수=값1일때 실행
//			break;  case문 빠져나가는 명령어
//		case 
//		}
		
	int num=5;
//		//():변수, 식 가능
//		switch(num%2) {
//		case 1:
//			System.out.println("홀수");
//			break;
//		case 0:
//			System.out.println("짝수");
//			break; //없으면 다음케이스도 실행
//			
//		}
//		
		switch(num) {
		case 1:
			System.out.println("1입니다");
			//모두 만족하지 않으면 default사용
		case 2:
			System.out.println("2입니다");
		case 5:
			System.out.println("5입니다");
			
		default:
		
		}
		

	}

}
