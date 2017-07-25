package cn.haigeek.service;

import cn.haigeek.dao.CommentDao;
import cn.haigeek.entity.Comment;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

/**
 * Created by haigeek on 2017/7/22.
 */
@Transactional
public class CommentService {
    private CommentDao commentDao;

    public void setCommentDao(CommentDao commentDao) {
        this.commentDao = commentDao;
    }

    public  void add(Comment comment) {
        commentDao.add(comment);
    }

    public List<Comment> findOne(int storyId) {
        return commentDao.findOne(storyId);
    }

    public List<Comment> findComment(int userId) {
        return commentDao.findComment(userId);
    }
}
