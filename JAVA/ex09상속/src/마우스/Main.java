package 마우스;

public class Main {

	public static void main(String[] args) {
		
		
		//BallMouse
		BallMouse ball= new BallMouse();
		
		ball.leftClick();
		ball.rightClick();
		ball.drag();
		
		System.out.println();
		
		
		//WheelMouse
		WheelMouse Wheel=new WheelMouse();
		
		Wheel.leftClick();
		Wheel.rightClick();
		Wheel.drag();
		Wheel.scroll();
		
		System.out.println();
		
		//HealthMouse
		HealthMouse Health=new HealthMouse();
		
		Health.leftClick();
		Health.rightClick();
		Health.drag();
		Health.health();
		
		
		/*상속: 기존의 클래스의 변수/메서드를 물려받아 새로운 클래스 구성/다중상속 불가능/연쇄상속가능
		 *기존클래스: 부모클래스,수퍼클래스
		 *새로운클래스:자식클래스,서브클래스
		 *화살표 방향: 자식->부모  데이터를 탐색하는 방향
		 *class 자식클래스 extends 부모클래스
		 */

		
		
		/*다중 상속 불가
		 * 상속회수 제한 없음
		 * 모든 클래스는 기본저긍로 object 클래스 상속 받음=> object는 최상위 클래스, 최상위 계층*/
	}

}
