package cn.haigeek.dao;

import cn.haigeek.entity.Comment;

import java.util.List;

/**
 * Created by haigeek on 2017/7/22.
 */
public interface CommentDao {
    void add(Comment comment);

    List<Comment> findOne(int storyId);

    List<Comment> findComment(int userId);
}
