package musicplayer;

import java.util.ArrayList;

import javazoom.jl.player.MP3Player;

public class Controller {
	
	MP3Player mp3= new MP3Player();

	//노래가 재생중인지 아닌지 확인후 멈추는 기능=> musicstop(): void
	public void musicstop() {
		if(mp3.isPlaying()) {
			mp3.stop();
		}
	}

	//이전곳 재생=
		
	public int premusic(int index, ArrayList<Music> musicList ) {
		
		index--;

		if (index == -1) {
			index = musicList.size() - 1;
		}
		mp3.play(musicList.get(index).getpath());
		
		
		return index;
	}
	
	
	public int nextmusic(int index, ArrayList<Music> musicList) {
		
		index++;
		
		if (index == musicList.size()) {
			index = 0;
		}
		
		mp3.play(musicList.get(index).getpath());

		return index;
	}

		
		
		
		
		
		
		
		
}
	
	

