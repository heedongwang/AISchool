package else_if문;

public class EX01_ELSE_IF문 {

	public static void main(String[] args) {
			/*if=elseif-else문:2개 이상의 조건식 판별
			 	if(조건1){
			 	}elseif(조건2){
			 	}elseif(조건3){
			 	}else{ 필수는 아님
			 	}
			 */
		int num=3;
		//짝,홀, 0인지 확인
		if(num==0) {
			System.out.println("0입니다");
		}else if(num%2==0){
			System.out.println("짝수입니다");
		}else {
			System.out.println("홀수입니다");
		}

	}

}
