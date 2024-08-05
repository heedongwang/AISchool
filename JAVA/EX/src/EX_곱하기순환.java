
public class EX_곱하기순환 {

	public static void main(String[] args) {
		int num = 1;
		int sum = 0;

		//1*77+2*76....
		for (int i = 77; i > 0; i--) {
			sum += i * num;
			num++;
		}

		System.out.println(sum);
	}

}
