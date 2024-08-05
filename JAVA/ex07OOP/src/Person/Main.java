package Person;

public class Main {

	public static void main(String[] args) {
		/*설계도 사용방법
		 * 설계도 이름 레퍼런스형변수명= new 설계도이름();
		 * new=새로운 주소값을 가지는 동적메모리 할당
		 * Person-필드(나이,이름,성별), 메서드(숨,밥,잠)
		 * ".": 참조연산자*/
		Person p1=new Person();
		
		System.out.println(p1+"\n"); //=> p1의 주소 출력
		//필드값 입력=> 세모: 필드에 존재 :뒤는 타입
		p1.age=27;
		p1.name="김희은";
		p1.gender="여";
		
		System.out.println(p1.age);
		System.out.println(p1.name);
		System.out.println(p1.gender);
		System.out.println("\n");
		
		//메서드 호출=> 녹색 동그라미
		p1.breath();
		p1.eat();
		p1.sleep();
		System.out.println("\n");
		
		//실습 p2만들어 데이터 초기화 후 출력
		Person p2= new Person();
		p2.age=22;
		p2.name="박지호";
		p2.gender="남자";
		
		System.out.println(p2.name+ " : "+p2.age+ " : "+p2.gender);
		p2.breath();
		p2.eat();
		p2.sleep();
		

	}
	

}
