package musicplayer;

import java.util.ArrayList;
import java.util.Scanner;

import javazoom.jl.player.MP3Player;

public class Main {

	public static void main(String[] args) {
		// 외부 라이브러리 적용-player.jar
		MP3Player mp3 = new MP3Player();
		Controller con= new Controller();
		/*
		 * mp3.play("C:\\Users\\USER\\Desktop\\music\\JENNIE - SOLO.mp3");
		 * //경로+파일명+확장자:path
		 * 
		 * mp3.stop(); 노래 , 가수, 제목, 플레이시간, 경로
		 */

		String defaultPath = "C:\\Users\\user\\Desktop\\music\\";
		Music m1 = new Music(defaultPath + "Anne Marie - 2002.mp3", "2002", "Anne Marie", 257);
		Music m2 = new Music(defaultPath + "Billie Eilish - bad guy.mp3", "bad guy", "Billie Eilish", 277);
		Music m3 = new Music(defaultPath + "Carmen Twillie, Lebo M. - Circle of Life.mp3", "Circle of Life",
				"Carmen Twillie, Lebo M.", 257);
		Music m4 = new Music(defaultPath + "CHUNG HA - 벌써 12시.mp3", "벌써 12시", "CHUNG HA", 182);
		Music m5 = new Music(defaultPath + "Idina Menzel - Let It Go.mp3", "Let It Go", "Idina Menzel", 126);
		Music m6 = new Music(defaultPath + "Itzy - Dalla Dalla.mp3", "Dalla Dalla", "Itzy", 233);
		Music m7 = new Music(defaultPath + "JENNIE - SOLO.mp3", "SOLO", "JENNIE", 198);
		Music m8 = new Music(defaultPath + "Mena Massoud, Naomi Scott - A Whole New World.mp3",
				"Mena Massoud, Naomi Scott", "A Whole New World", 222);
		Music m9 = new Music(defaultPath + "Rain - 깡.mp3", "깡", "Rain", 237);
		Music m10 = new Music(defaultPath + "TWICE - FANCY.mp3", "FANCY", "TWICE", 114);

		ArrayList<Music> musicList = new ArrayList<Music>();

		musicList.add(m1);
		musicList.add(m2);
		musicList.add(m3);
		musicList.add(m4);
		musicList.add(m5);
		musicList.add(m6);
		musicList.add(m7);
		musicList.add(m8);
		musicList.add(m9);
		musicList.add(m10);

		// System.out.println(musicList.get(9).gettitle());

		Scanner sc = new Scanner(System.in);
		int index=0;

		while (true) {
			
			System.out.print("1.재생 2.정지 3.이전곡 4.다음곡 5.종료 ");
			int select = sc.nextInt();
			
			
			if (select == 1) {
				
				mp3.play(musicList.get(index).getpath());
				musicList.get(index).showmuisc();

			} else if (select == 2) {
				con.musicstop();
				
			} else if (select == 3) {
				
				con.musicstop();
				index= con.premusic(index,musicList);
				musicList.get(index).showmuisc();

			} else if (select == 4) {
				
				con.musicstop();
				index=con.nextmusic(index, musicList);
				musicList.get(index).showmuisc();
				
			} else {
				mp3.stop();
				System.out.println("프로그램 종료");
				break;
			}
		}

		sc.close();

	}

}
