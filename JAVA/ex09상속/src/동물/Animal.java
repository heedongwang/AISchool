package 동물;

public abstract class Animal {
	String gender;
	
	public void eat() {System.out.println("먹다");}
	public void sleep() {System.out.println("자다");}
	public abstract void move(); //추상화 abstract
	/*body가 없는 매서드는 추상화 해야함, 클래스에도 추상화 명령어 써줘야함
	 * public abstract class
	 * public abstract void function()
	 * 
	 * 추상 클래스는 일반 매서드만 가지고 있을 수 있음
	 * 추상 매서드를 가지고 있으면서 일반클래스 일수는 없음
	 *  */

}
