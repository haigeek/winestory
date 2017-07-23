package cn.haigeek.entity;

import java.util.Date;
import java.util.HashSet;
import java.util.Set;

public class Story {
	private Integer story_id;
	private Integer user_id;
	private String story_title;
	private String story_content;
	private String story_type;
	private Date date;
	//所属的用户
	private User user;

	private Set<Comment> setComment=new HashSet<Comment>();

	public Story(Integer story_id, Integer user_id, String story_title, String story_content, String story_type, Date date, User user, Set<Comment> setComment) {
		this.story_id = story_id;
		this.user_id = user_id;
		this.story_title = story_title;
		this.story_content = story_content;
		this.story_type = story_type;
		this.date = date;
		this.user = user;
		this.setComment = setComment;
	}
	public Story(){

	}

	public User getUser() {
		return user;
	}
	public void setUser(User user) {
		this.user = user;
	}
	public Integer getStory_id() {
		return story_id;
	}
	public void setStory_id(Integer story_id) {
		this.story_id = story_id;
	}
	public Integer getUser_id() {
		return user_id;
	}
	public void setUser_id(Integer user_id) {
		this.user_id = user_id;
	}
	public String getStory_title() {
		return story_title;
	}
	public void setStory_title(String story_title) {
		this.story_title = story_title;
	}
	public String getStory_content() {
		return story_content;
	}
	public void setStory_content(String story_content) {
		this.story_content = story_content;
	}
	public String getStory_type() {
		return story_type;
	}
	public void setStory_type(String story_type) {
		this.story_type = story_type;
	}

	public Date getDate() {
		return date;
	}

	public void setDate(Date date) {
		this.date = date;
	}

	public Set<Comment> getSetComment() {
		return setComment;
	}

	public void setSetComment(Set<Comment> setComment) {
		this.setComment = setComment;
	}
}
