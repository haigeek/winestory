package cn.haigeek.entity;

import java.util.Date;

/**
 * Created by haigeek on 2017/7/13.
 */
public class Comment {
    private Integer commentId;
    private Integer userId;
    private Integer storyId;
    private String commentContent;
    private Date commentDate;
    //所属于的用户
    private User user;
    //所属于的帖子
    private Story story;

    public Comment(Integer commentId, Integer userId, Integer storyId, String commentContent, Date commentDate, User user, Story story) {
        this.commentId = commentId;
        this.userId = userId;
        this.storyId = storyId;
        this.commentContent = commentContent;
        this.commentDate = commentDate;
        this.user = user;
        this.story = story;
    }

    public Comment(){

    }

    public Integer getCommentId() {
        return commentId;
    }

    public void setCommentId(Integer commentId) {
        this.commentId = commentId;
    }

    public Integer getUserId() {
        return userId;
    }

    public void setUserId(Integer userId) {
        this.userId = userId;
    }

    public Integer getStoryId() {
        return storyId;
    }

    public void setStoryId(Integer storyId) {
        this.storyId = storyId;
    }

    public String getCommentContent() {
        return commentContent;
    }

    public void setCommentContent(String commentContent) {
        this.commentContent = commentContent;
    }

    public Date getCommentDate() {
        return commentDate;
    }

    public void setCommentDate(Date commentDate) {
        this.commentDate = commentDate;
    }

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

    public Story getStory() {
        return story;
    }

    public void setStory(Story story) {
        this.story = story;
    }
}

