package 책관리프로그램;

import java.util.Scanner;

public class Main {

	public static void main(String[] args) {
		Scanner sc= new Scanner(System.in);
		BookData[] books=new BookData[5];
		
		
			BookData book1= new BookData("Java",21000,"홍길동");
			BookData book2= new BookData("C++",29000,"박문수");
			BookData book3= new BookData("Database",31000,"김장독");
			BookData book4= new BookData("Android",18000,"이순신");
			BookData book5= new BookData("Web",26000,"김철수");
			
			books[0]=book1;
			books[1]=book2;
			books[2]=book3;
			books[3]=book4;
			books[4]=book5;
			
			
			System.out.print("금액을 입력하세요 : ");
			int pri=sc.nextInt();
			
			System.out.println("구매 가능한 책 목록");
			for(int i=0;i<books.length;i++) {
				if(pri>=books[i].getprice()) {
					System.out.println("["+books[i].getTitle()+", "+books[i].getwriter()+", "+books[i].getprice()+"원]");
				}
			}
			
			sc.close();
			
	}

}
