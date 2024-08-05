package 매서드;

public class EX00매서드 {

	public static void main(String[] args) {
		/*	클래스 내/외부 자유 	저장소 	리턴타입		메서드명->매서드 정의									
		 * 	public 			static 자료형 		함수이름( 자료형 매개변수){
		 * body:: 매서드 로직
		 * return 반환값
		 * }
		 * 접근제한자: 
		 * 	public:, private, ,protected, default
		 * 저장소: static
		 * 리턴타임: 결과값의 데이터 타입 void: return 반드시 빌요하지 않음, 생략가능
		 * 						 int, string...: return 반드시 반환해야함
		 * 매서드명: 호출명 
		 * (  ): 매서드 선언=> 매서드 안= 매개변수/ 매개변수 없으면 =parameter
		 * mian 안에서 매서드(함수) 사용
		 * */
		
		sum(5,10);
		sum(5,112);
		sum(5,9);
	}
	
	public static void sum(int a, int b) {
		System.out.println(a+b+13);
	}  //유지보수가 용이
	

}
	