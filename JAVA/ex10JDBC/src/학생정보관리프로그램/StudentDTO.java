package 학생정보관리프로그램;

public class StudentDTO {
	// DTO:Data Transfer Object
	// Student 테이블에 있는 컬럼만큼 필드, getter 생성
	// name,age,gender,major

	private String name;
	private int age;
	private String gender;
	private String major;

	// 생성자
	public StudentDTO(String name, int age, String gender, String major) {//insert

		this.name = name;
		this.age = age;
		this.gender = gender;
		this.major = major;
	}
	
	

	public StudentDTO(String name, int age) { //delete
		super();
		this.name = name;
		this.age = age;
	}



	public StudentDTO(String name, int age, String major) {//update

		this.name = name;
		this.age = age;
		this.major = major;
	}



	// getter

	public String getName() {
		return name;
	}

	public int getAge() {
		return age;
	}

	public String getGender() {
		return gender;
	}

	public String getMajor() {
		return major;
	}

}
