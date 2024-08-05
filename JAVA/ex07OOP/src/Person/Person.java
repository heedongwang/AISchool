package Person;

public class Person {
//설계도==class
/*1.필드: 데이터,변수, 속성, 정보*=> object(Person)가 가질수 있는 데이터*
 * 데이터: 나이, 성별, 이름*/
	
	int age;
	String gender;
	String name;
	
	
	/*2.메서드: 오브젝트의 행위/ 행위, 기능
	 * 데이터: 숨쉬기, 밥먹기, 잠자기
	 * 저글링x=>개인의 특징은 포함하면 안됨, 공통적인 특징만 입력*/
	
	public 	void breath() {
		System.out.println("숨을 쉰다 o3o");
	}
	public void eat() {
		System.out.println("밥을 먹는다 :q");
	}
	public void sleep() {
		System.out.println("잠을 잔다 ㅡ_ㅡ");
	}
}
