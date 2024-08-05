package 일차원배열;

public class EX02배열 {

	public static void main(String[] args) {
		//배열 임의값 초기화(3,7,18,71,9,12,24)=배열 이름 arr
		int[] arr= {3,7,18,71,9,12,24};
		int count=0;
		//홀수의 개수 출력
		System.out.print("array에 들어있는 홀수는 ");
		for(int i=0;i<arr.length;i++) {
			if(arr[i]%2==1) {
				System.out.print(arr[i]+" ");
				count++;
			}
		}
		
				System.out.print("이며, \n총 "+count+"개 입니다.");
	}

}
