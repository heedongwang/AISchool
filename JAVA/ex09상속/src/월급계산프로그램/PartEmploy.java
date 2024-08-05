package 월급계산프로그램;

public class PartEmploy extends employ {
//	String empno;
//	String name;
//	int pay;
	int workDay;
	



	public PartEmploy(String empno, String name, int pay, int workDay) {
		super(empno,name,pay);
//		this.empno = empno;
//		this.name = name;
//		this.pay = pay;
		this.workDay = workDay;
	}



	@Override
	public int getMoneyPay() {
		
		return (pay*workDay);
	}
	

	
	

}
