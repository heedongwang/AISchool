package while문;

public class EX04do_while문 {

	public static void main(String[] args) {
		
		/*do-while:반복 횟수 안정해진 경우 사용
		  do{
		  		}while(조건식);
		  		
		 do-while, while 차이점
		 */
		
		int cnt=6;
	//cnt가 5일동안 반복 syso("반복")
	//while
		while(cnt==5) {
			System.out.println("반복");
		}
		
		//do-while
		do {
			System.out.println("do반복");
		}while(cnt==5);
		

	}

}
