package while문;

import java.util.Scanner;

public class EX05예제_홀짝카운트 {

	public static void main(String[] args) {
		 Scanner sc= new  Scanner(System.in);
		 
		 int even=0;
		 int odd=0;
		 
		 while(true) {
			 System.out.print("숫자입력:");
			  int num=sc.nextInt();
			  
			 if(num==-1) {
				 System.out.println("종료되었습니다.");
				 break;
			 }
			if(num%2==0) {
				even+=1;
				System.out.println("짝수 개수 :"+even+"\n홀수 개수 :"+odd+"\n");
			}else {
				 odd+=1;
				 System.out.println("짝수 개수 :"+even+"\n홀수 개수 :"+odd+"\n");
			 }
		 }
			 
		 
//		 do {
//			 System.out.print("숫자입력:");
//			  int num=sc.nextInt();
//			  
//			  //num==-1이면 종료
//			  if(num==-1) {
//				  System.out.println("종료되었습니다.");
//				  break;
//			  }
//			  
//			  if(num%2==0) {
//					 ++even;
//					//System.out.println("짝수개수 "+ ++even); 
//				 }else {
//					 ++odd;
//				 }
//			  System.out.println("짝수 개수 :"+even+"\n홀수 개수 :"+odd+"\n");
//			  
//		 }while(true);
		 

		 
		 
		 
		 sc.close();

	}

}


