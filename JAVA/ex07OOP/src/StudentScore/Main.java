package StudentScore;

import java.util.Scanner;

public class Main {

	public static void main(String[] args) {
		Scanner sc= new Scanner(System.in);
		
		StudentScore[] score =new StudentScore[3];
		
		for(int i=1;i<=score.length;i++) {
			
		System.out.print(i+"번째 학생의 이름을 입력하세요.>>");	
			String name=sc.next();
		System.out.print(i+"번째 학생의 Java점수를 입력하세요.>>");
			int JavaScore=sc.nextInt();
		System.out.print(i+"번째 학생의 Web점수를 입력하세요.>>");
			int WebScore= sc.nextInt();
		System.out.print(i+"번째 학생의 Android점수를 입력하세요.>>");
			int AndroidScore=sc.nextInt();
		System.out.println();
		
		StudentScore st=new StudentScore(name,JavaScore,WebScore,AndroidScore);
		score[i-1]=st;
		}
		
		System.out.println();
		
		for(int i=0;i<score.length;i++) {
			int sum=score[i].getScoreJava()+score[i].getScoreWeb()+score[i].getScoreAndroid();
			int avg= sum/3;
			System.out.println(score[i].getName()+"님의 총점은 "+ sum+"점, 평균은 "+ avg+"점 입니다.");
					
		}
		
		
		
		sc.close();
	}

}
