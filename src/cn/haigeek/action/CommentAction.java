package cn.haigeek.action;

import cn.haigeek.entity.Comment;
import cn.haigeek.service.CommentService;
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

    public Comment getComment() {
        return comment;
    }

    public void setComment(Comment comment) {
        this.comment = comment;
    }

    public String add(){
        comment.setCommentDate(date);
        commentService.add(comment);

        return "add";
    }


}
