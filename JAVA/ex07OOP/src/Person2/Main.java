package Person2;

public class Main {

	public static void main(String[] args) {
		Person2 person1=new Person2();
		person1.setName("김희은");
		person1.setAge(27);
		
		
		Person2 person2=new Person2("박지호",22);
		
	
		System.out.println("st1객체 학생 이름:" +person1.getName()+", 나이: "+person1.getAge());
		System.out.println("st2객체 학생 이름:" +person2.getName()+", 나이: "+person2.getAge());
		
		
		//객체배열
		Person2[] pArray= new Person2[2];
		pArray[0]=person1;
		pArray[1]=person2;
		
		System.out.println(person1);
		System.out.println(pArray[0].getName());
		
		for(int i=0;i<pArray.length;i++) {
			System.out.println(pArray[i].getName());
		}
		
		
	}

}
