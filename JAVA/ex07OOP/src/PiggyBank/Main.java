package PiggyBank;

public class Main {

	public static void main(String[] args) {
		/*1.class사용해 pig객체 생성
		 * 2.pig에 10000원 초기화
		 * 3.deposit이용해 5000원 입금*=>매개변수1 전달인자1
		 * 4.잔액 확인=> 15000월 보여야함
		 * 5.1200원 인출
		 * 6. 잔액확인*/
		
		PiggyBank pig= new PiggyBank(10000,"김희은");
		
		//pig.money=10000; private 설정으로 메인클래스에서 사용불가
		
		pig.deposit(5000);
		pig.showMoney();

		pig.withdraw(1200);
		pig.showMoney();
		
		System.out.println(pig.getMoney());
		
		pig.setMoney(18000);
		pig.showMoney();

	}

}



