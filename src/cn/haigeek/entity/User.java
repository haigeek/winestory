package cn.haigeek.entity;

import java.util.Date;
import java.util.HashSet;
import java.util.Set;

public class User {
	private Integer uid;
	private String username;
	private String password;
	private String address;
	private String email;
	private String aboutme;
	private String weibo;
	private String music;
	private String website;
	private String avatar;
	private Date joindate;

	//表示所有的story
	private Set<Story> setStory=new HashSet<Story>();
	private Set<Comment> setComment=new HashSet<Comment>();

	public User(Integer uid, String username, String password, String address, String email, String aboutme, String weibo, String music, String website, String avatar, Date joindate, Set<Story> setStory, Set<Comment> setComment) {
		this.uid = uid;
		this.username = username;
		this.password = password;
		this.address = address;
		this.email = email;
		this.aboutme = aboutme;
		this.weibo = weibo;
		this.music = music;
		this.website = website;
		this.avatar = avatar;
		this.joindate = joindate;
		this.setStory = setStory;
		this.setComment = setComment;
	}
	public User(){

	}

	public Set<Story> getSetStory() {
		return setStory;
	}
	public void setSetStory(Set<Story> setStory) {
		this.setStory = setStory;
	}
	public Integer getUid() {
		return uid;
	}
	public void setUid(Integer uid) {
		this.uid = uid;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getAboutme() {
		return aboutme;
	}
	public void setAboutme(String aboutme) {
		this.aboutme = aboutme;
	}
	public String getWeibo() {
		return weibo;
	}
	public void setWeibo(String weibo) {
		this.weibo = weibo;
	}
	public String getMusic() {
		return music;
	}
	public void setMusic(String music) {
		this.music = music;
	}
	public String getWebsite() {
		return website;
	}
	public void setWebsite(String website) {
		this.website = website;
	}

	public String getAvatar() {
		return avatar;
	}

	public void setAvatar(String avatar) {
		this.avatar = avatar;
	}

	public Date getJoindate() {
		return joindate;
	}

	public void setJoindate(Date joindate) {
		this.joindate = joindate;
	}

	public Set<Comment> getSetComment() {
		return setComment;
	}

	public void setSetComment(Set<Comment> setComment) {
		this.setComment = setComment;
	}
}
