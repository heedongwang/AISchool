package 월급계산프로그램;

public class TempEmploy extends employ {
//	String empno;
//	String name;
//	int pay;
	
	
	public TempEmploy(String empno, String name, int pay) {
		super(empno,name,pay);
//		this.empno = empno;
//		this.name = name;
//		this.pay = pay;
	}


	@Override
	public int getMoneyPay() {
		return (pay/12);
		
	}
	

	

}
