package hemansu.model;

import java.util.ArrayList;

public class WordBean {
	
	private String word;
	private ArrayList<String>meaningsList = new ArrayList<String>();
	public String getWord() {
		return word;
	}
	public void setWord(String word) {
		this.word = word;
	}
	public ArrayList<String> getMeaningsList() {
		return meaningsList;
	}
	public void setMeaningsList(ArrayList<String> meaningsList) {
		this.meaningsList = meaningsList;
	}
}
