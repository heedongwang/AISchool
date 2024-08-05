package JDBC기초;

public class Student {
	//사용자가 입력한 4개의 데이터를 하나의 자료형으로 사용하기 위해 4개 필드 생성(private)
	//생성자 4개, getter,setter
	
	private String name;
	private int age;
	private String gender;
	private String major;
	
	
	//insert
	public Student(String name, int age, String gender, String major) {
		
		this.name = name;
		this.age = age;
		this.gender = gender;
		this.major = major;
	}
	
	//update, 오버로딩
	public Student(String name, int age, String major) {
		super();
		this.name = name;
		this.age = age;
		this.major = major;
	}

	//delete
	public Student(String name, int age) {
		super();
		this.name = name;
		this.age = age;
	}





	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	
	public int getAge() {
		return age;
	}
	public void setAge(int age) {
		this.age = age;
	}
	
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	
	public String getMajor() {
		return major;
	}
	public void setMajor(String major) {
		this.major = major;
	}
	
	
	
	
	
}
