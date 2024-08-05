package PiggyBank;

public class PiggyBank {

	private int money;
	//private String name;
	
	//생성자: 메서드, 클래스 이름이랑 동일하게 생성, 기본생성자는 생략되어있음
	//새로운 생성자 만들면 기본생성자 사용불가=> 기본 생성자 사용위해선 오버로딩 필요
	public PiggyBank(int money, String name) {
		this.money=money;
		//this.name=name;
	}
	
	
	//getter:필드를 가져와 주는 역할
	public int getMoney() { 
		return money;
	}
	
	//setter:필드를 
	public void setMoney(int Money) {
		this.money=Money;
		
	}
	public void deposit(int inMoney) {
		// 입금
		money+=inMoney;
		
	}

	public void withdraw(int outMoney) {
		// 출금
		money-=outMoney;
	}

	public void showMoney() {
		// 잔액
		System.out.println("현재 잔액은 "+money+"원 입니다.");
	}

	

}
//package 저금통;
//
//public class PiggyBank {
//
//   // 저금통 설계도
//   // 1) 필드 - 금액(돈)
//   private int money;
//   // private : 필드를 클래스 외부에서 접근할 수 없도록 도와주는 제한자
//   // private로 되어있는 필드는 존재하고있는 클래스 내부에 메서드를 통해서만
//   // 접근이 가능하다
//   
//   // PiggyBank 클래스에 필드에 접근할 수 있는 메서드를 만들어줘야한다!
//   // - 생성자(constructor)
//   
//   public PiggyBank(int money) {
//      // - 기본 생성자 : 클래스를 만들때 생략되어있다.
//      // 1. 객체 생성을 할 수 있다
//      // 2. 필드를 초기화 시키는 기능을 가질 수 있다
//      this.money = money;
//   }
//   
//   
//   // 생성자의 특징 ❤️❤️❤️❤️❤️❤
//   // 1. 생성자도 메서드 - ()
//   // 2. 생성자는 리턴타입이 없다(void도 안와요)
//   // 3. 기본생성자는 생략되어있다.
//   // 4. 새로운 생성자를 내가 만들면
//   //  필드를 초기화 시키는 생성자를 만들면
//   //  기본생성자는 사용할 수 없는 상태가 된다...
//   
//   
//   
//   
//   
//   
//   
//   
//   
//   
//   
//   
//   // getter/setter
//   // getter : 필드에 있는 데이터를 결과값으로 돌려주는 메서드
//   // setter : 필드에 있는 값을 수정하고 싶을 때 사용하는 메서드 
//   public int getMoney(){
//      // 현재 필드에 있는 값을 결과로 돌려주면 됨...
//      return money;
//   }
//   
//   public void setMoney(int money) {
//      // 매개변수 money : 어떤 값으로 수정할 건지 에대한 데이터
//      this.money = money;
//   }
//   
//   
//   
//   // 2) 메서드 - 입금, 출금, 잔액
//   public void withdraw(int money) {
//      // 돈을 인출
//      this.money -= money;
//   }
//   public void deposit(int money) {
//      // 돈을 입금
//      // this : 현재 클래스를 지칭 키워드
//      this.money = this.money + money;
//   }
//   public void showMoney() {
//      // 현재 내가 가지고있는 금액을 보여주는 기능
//      System.out.println(money+"원");
//   }
//   
//}
