package 월급계산프로그램;

public  class RegularEmploy extends employ {
//	String empno;
//	String name;
//	int pay;
	int bouns;
	
	public RegularEmploy(String empno, String name, int pay, int bouns) {
		super(empno,name,pay);
		//부모클래스에 생성자가 있으면, 반드시 자식에 부모 생성자가 구현되어있어야한다.
//		
//		this.empno = empno;
//		this.name = name;
//		this.pay = pay;
		this.bouns = bouns;
	}
	
	
	@Override
	public  int getMoneyPay() {
		
		return (pay+bouns)/12;
		
	}
	

}
