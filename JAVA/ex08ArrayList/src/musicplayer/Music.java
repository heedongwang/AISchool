package musicplayer;

public class Music {
	private String singer;
	private String title;
	private int playTime;
	private String path;
	
	
	public Music(String path, String title, String singer, int playTime ) {
		this.singer = singer;
		this.title = title;
		this.playTime = playTime;
		this.path = path;
	}
	
	public String getsinger() {
		return singer;
		
	}
	public String gettitle() {
		return title;
		
	}
	public int getplaytime() {
		return playTime;
		
	}
	public String getpath() {
		return path;
		
	}
	
	public void showmuisc() {
		System.out.println(gettitle()+ " - "+getsinger()+", "+(getplaytime()/60)+"분 "+(getplaytime()%60)+"초");
	}
	
	
}
