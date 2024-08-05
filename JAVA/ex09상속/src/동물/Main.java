package 동물;

public class Main {

	public static void main(String[] args) {
		Penguin pen=new Penguin();
		Animal a1=pen;
		a1.move();
		pen.eat();
		pen.sleep();
		pen.egg();
		pen.move();
		pen.slide();

//		Animal a2= new Animal();
//		Whale wha= (Whale)a2;
//		
		Penguin pen2=(Penguin)a1;	
		
		/*
		 * 업캐스팅(upcasting): 
		 * Animal a1= pen; => 자식을 부모클래스로 바꿔 생성/ 자동 형변환과 비슷
		 * => 오버라이드 된 매서드는 자식클래스의 매서드로 실행,
		 * 	  고유하게 가지고 있는 매서드는 사용할수 없다.
		 * 	  부모는 없고 자식에게만 있는 매서드는  사용 불가
		 * =>하나의 자료형으로 관리 가능, 메모리 확보, 빠른 실행
		 * folat f1= 3.14f;
		 * double d1=f1;
		 * 
		 * 
		 * 
		 * 다운캐스팅(downcasting):부모 클래스가 자식 클래스의 타입으로 형변환
		 * =>업캐스팅이 된적이 있ㄷ었던 자료형만 다운캐스팅 가능
		 * 다운캐스팅을 진행하면 업캐스팅 때 사용할수 없었던 고유한 기능을 다시 사용가능
		 * Animal a2= new Animal();
		 * Whale wha= a2;
		 * */
		
		
		Eagle e1= new Eagle();
		Eagle e2= new Eagle();
		Penguin p3= new Penguin();
		Whale w2= new Whale();
		
		Animal a3=e1;
		Animal a4=e2;
		Animal a5=p3;
		Animal a6=w2;
		/*Animal a7= new Animal();
		 *Mammal m1= new Mammal():
		 *추상 클래스는 객체 생성 불가능 */
		 
		
		
	}

}
