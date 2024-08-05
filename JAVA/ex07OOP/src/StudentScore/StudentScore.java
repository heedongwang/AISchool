package StudentScore;

public class StudentScore {
	private String name;
	private int scoreJava;
	private int scoreWeb;
	private int scoreAndroid;

	public StudentScore(String name, int scoreJava,int scoreWeb, int scoreAndroid) {
		this.name=name;
		this.scoreJava=scoreJava;
		this.scoreWeb=scoreWeb;
		this.scoreAndroid=scoreAndroid;
	}
	//alt+shift+s->generate using field
	//super:상속
	
	public String getName() {
		return name;
	}
	public int getScoreJava() {
		return scoreJava;
	}
	public int getScoreWeb() {
		return scoreWeb;
	}
	public int getScoreAndroid() {
		return scoreAndroid;
	}

}
	