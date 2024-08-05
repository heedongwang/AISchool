package 이항연산자;

public class EX04논리연산자 {

	public static void main(String[] args) {
		// NOT !
		System.out.println(!true);
		System.out.println(!false);
		// AND && :피연산자가 항에 bool자료형, 하나라도 F이면 결과는 F
		int num1=3, num2=4;
		System.out.println((num1<num2)&&(num1!=num2));
		
		
		//OR || : bool자료형, 둘다 F이면 T/ 한쪽에 T있으면 
		System.out.println((num1>num2)||(num1!=num2));
		
		System.out.println(!(3>10));
	}

}
