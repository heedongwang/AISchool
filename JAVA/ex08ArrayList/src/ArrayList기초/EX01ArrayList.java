package ArrayList기초;

import java.util.ArrayList;

public class EX01ArrayList {

	public static void main(String[] args) {
		/*가변 배열: 데이터 개수에 따라 크기 변동 배열*/
		
		//선언
		ArrayList<String> list= new ArrayList<String>();
		
		
		//데이터 추가  .add(인덱스 값, 데이터);
		list.add("조자연");
		list.add("최영화");
		list.add("박병관");
		
		list.add(1,"이도연");
		
		//데이터 가져오는 방법 .get(인덱스 값)=> 출력기능은 없음
		list.get(2);
		System.out.println(list.get(2));
		
		
		//get에 들어있는 index값은 변수로 사용될수 있다.=> 순차적 접근 가능
		//list.size()=> 배열의 크기 돌려줌
		for(int i=0;i<list.size();i++) {
			System.out.println(1);
		}
		
		
		//데이터 삭제: .remove(index값)
		list.remove(1);
		
		System.out.println(list);
		
		//모든 데이터 삭제 . clear()
		list.clear();
		System.out.println(list.size());
		
		
		
		
		ArrayList<Integer>  numbers= new ArrayList<>();
		/*레퍼런스형 타입만 저장 가능 => Integer, Float,String 
		 * <>: generic-collection=>객체 자료형만 저장*/
		
		numbers.add(5);
		
	}

}
	