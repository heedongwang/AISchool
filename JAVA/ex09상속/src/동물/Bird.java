package 동물;

public class Bird extends Animal {
	public void egg(){System.out.println("알을 낳다");}
	
	
	public void move() {System.out.println("난다");}  //오버라이딩
	
	
	
	//bird 가 물려주는 move가 헤엄치다로 동작할 수 있도록 오버라이딩 
	/*오버라이딩: 재정의,
	
	
	오버로딩: 중복정의
	*/
}
