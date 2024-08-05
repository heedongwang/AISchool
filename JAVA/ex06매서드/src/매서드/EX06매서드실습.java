package 매서드;

public class EX06매서드실습 {

	public static void main(String[] args) {
	
		int a=5;
		int b=3;
		char op='-';
		
		System.out.println(cal(a,b,op));

	}
	public static int cal (int a, int b, char op) {//전달인자랑 매개변수랑 같은 이름으로하는 것이 좋음
		int result=0;
		
		if(op=='+') 
			result=a+b;
		else if(op=='-')
			result=a-b;
		else if(op=='*')
			result=a*b;
		else if(op=='/')
			result=a/b;
		
			return result;
		
		
	}
}
