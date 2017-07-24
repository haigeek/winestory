package cn.haigeek.action;

import cn.haigeek.entity.Comment;
import cn.haigeek.service.CommentService;
import cn.haigeek.service.StoryService;
import com.opensymphony.xwork2.ActionSupport;

import java.util.Date;

/**
 * Created by haigeek on 2017/7/22.
 */
public class CommentAction extends ActionSupport  {
    Date date = new Date();
    private Comment comment;
    private CommentService commentService;
    //private Integer storyId;
    public void setCommentService(CommentService commentService) {
        this.commentService = commentService;
    }
    private StoryService storyService;

    public void setStoryService(StoryService storyService) {
        this.storyService = storyService;
    }

    public Comment getComment() {
        return comment;
    }

    public void setComment(Comment comment) {
        this.comment = comment;
    }

    public String add(){
        comment.setCommentDate(date);
        commentService.add(comment);
        int story_id=comment.getStory().getStory_id();
        storyService.addCommentCount(story_id);
        return "add";
    }


}
