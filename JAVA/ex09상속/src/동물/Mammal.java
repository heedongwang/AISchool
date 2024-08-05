package 동물;

public abstract class Mammal extends Animal {
	// 추상화된 부모의 매서드를 사용하지 않으면 에러 발생=> 구현 강제화 발생, 추상매서드 구현해야함
	//자식클래스도 추상화 해줘야함
	public void baby() {System.out.println("새끼를 낳다");}
	

}
