package 동물;

public class Penguin extends Bird{
	
	@Override
	public void move() {
		System.out.println("헤엄치다");
	}
	public void slide() {System.out.println("배치기");}
}
