package for문;

public class EX01for문 {

	public static void main(String[] args) {
		/*1)for문을 사용하여21 ~57 출력 
		 * 2) 96~53 
		 * 3) 21~57중 홀수
		 */

		for (int i = 21; i <= 57; i++) {
			System.out.print(i + " ");
		}

		System.out.println("\n");

		for (int i = 96; i >= 53; i--) {
			System.out.print(i + " ");
		}

		System.out.println("\n");
//		
//		build up
//		for (int i = 21; i <= 57; i++) {
//			if (i % 2 == 1) {
//				System.out.print(i + " ");
//			}
		
		for( int i= 21; i<=57;i+=2) {
			System.out.print(i + " ");

		}
	
	}

}
