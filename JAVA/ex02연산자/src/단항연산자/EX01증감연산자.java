package 단항연산자;

public class EX01증감연산자 {

	public static void main(String[] args) {
		//++,--
		int num=3;
		//뒤에 붙어 있으면 실행 후 연산 저장
		System.out.println(num++);
		System.out.println(num);
		System.out.println();
		
		//앞에 붙어 있으면 먼저 연산 저장 후 실행
		System.out.println(--num);
		System.out.println(num);

	}

}
