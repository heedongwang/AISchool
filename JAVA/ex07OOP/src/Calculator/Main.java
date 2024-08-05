package Calculator;

public class Main {

	public static void main(String[] args) {
		Calculator cal=new Calculator(45,50);
		
		System.out.println(cal.sum()); 
		
		cal.setNum1(75);
		cal.setNum2(5);
		
		System.out.println(cal.sub());
		System.out.println(cal.mul()); 
		System.out.println(cal.div()); 

		
	}

}
