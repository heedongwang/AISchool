package 매서드;

public class EX07메서드실습 {

	public static void main(String[] args) {
		int a=10;
		int b=24;
		int result= largerNumber(a,b);
		System.out.println("큰 수 확인: "+result);
	}
	public static int largerNumber(int a,int b) {
		if(a>b)
			return a;
		else if(b>a)
			return b;
		else
			return 0;
	}

}
