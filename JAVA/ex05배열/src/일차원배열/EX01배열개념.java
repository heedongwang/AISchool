package 일차원배열;

public class EX01배열개념 {

	public static void main(String[] args) {
		
//		String b1="양준영";
//		String b2="방상제";
//		String b3="김지호";
//		String b4="김창민";
//		String b5="조자연";
//		
//		//5명의 학생이름을 for문을 이용해 한번에 출력->불가능
//		//변수를 만드는것= 다른공간이 새로 생성되는것=> for문을 사용한 순차적 접근 불가
//		//이름을 관리하는 배열 생성
//		/*배열생성방법: 자료형[] 배열명= new 자료형[배열의 크기];
//		 * => 자료형=저장하고 싶은 데이터 타입 String[]: 문자열 배열
//		 * 배열생성시 배열크기 반드시 정해줘야함*/
//		//new:동적메모리를 새롭게 할당 해주는 키워드
//		String[] names=new String[5]; 
//		String[] names= {b1,b2,b3,b4,b5};

//		//names= 레퍼런스형 변수(주소값을 참조하는 변수)
//		/*기본데이터 타입이 저장되는 방법(bool,int ,char..)
//		 * 레퍼런스 타입 저장되는 방법*/
//		names[0]=b1;
//		names[1]=b2;
//		names[2]=b3;
//		names[3]=b4;
//		names[4]=b5;
//		//ArrayIndexOutofBoundException:예외상황: 실행시켜야 확인가능/인덱스가 존재하지 않는 곳에 접근시 발생
//		
//		
//		for(int i=0; i<5;i++) {
//			System.out.println(names[i]);
//		}
//		
//		System.out.println(names.length);
		
		//실습) 배열을 임의 값 8개로 초기화  7,11,20,30,5,45,17,9
		//int[] nums=new int[8];
		int[] nums= {7,11,20,30,5,45,17,9};
		
		//배열안에서 홀수만 출력
		for(int i=0;i<nums.length;i++) {
			if(nums[i] %2==1)
				System.out.print(nums[i] +" ");
		}
		System.out.println();
		
		
		//배열안 짝수 개수 출력
		int count=0;
		for(int i=0;i<nums.length;i++) {
			if(nums[i] %2==0)
				count++;
		}
		System.out.println(count);

		//배열안 숫자중 가장 큰 값 출력
//		int maxnum=0;
//		for(int i=0;i<nums.length-1;i++) {
//			if(nums[i]<nums[i+1]) {
//				if(maxnum<nums[i+1])
//					maxnum=nums[i+1];
//			}
//		}
		int maxnum=nums[0]; //배열이 음수일때 최대값이 0이 되는 것을 방지
		for(int i=0;i<nums.length;i++) {
			if(maxnum<nums[i])
				maxnum=nums[i];
		}
		System.out.println(maxnum);
		
		
		
		
	}

}
