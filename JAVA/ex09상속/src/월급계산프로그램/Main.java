package 월급계산프로그램;

public class Main {

	public static void main(String[] args) {
		RegularEmploy reg= new RegularEmploy("SMHRD001","홍길동",4000,400);
		TempEmploy temp= new TempEmploy("SMHRD002","박문수",3000);
		PartEmploy part= new PartEmploy("SMHRD001","임성훈",10,10);
	
//		
//		reg.inform();
//		temp.inform();
//		part.inform();
//		
		System.out.println(reg.print());
		System.out.println(reg.getMoneyPay()+"만원");
		System.out.println(temp.print());
		System.out.println(temp.getMoneyPay()+"만원");
		System.out.println(part.print());
		System.out.println(part.getMoneyPay()+"만원");
	}

}
