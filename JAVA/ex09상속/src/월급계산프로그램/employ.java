package 월급계산프로그램;

public abstract class employ {
	
	String empno;
	String name;
	int pay;

	
	


	public employ(String empno, String name, int pay) {
		
		this.empno = empno;
		this.name = name;
		this.pay = pay;
	}


	public abstract int  getMoneyPay();
	
	
	public String print() {
		return empno +":"+name+":"+pay;
	}

//	public void inform() {
//		System.out.println(print()+"\n"+getMoneyPay()+"만원");
//		
//	}

}
