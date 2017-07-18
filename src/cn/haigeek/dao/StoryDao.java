package cn.haigeek.dao;

import cn.haigeek.entity.Story;

import java.util.List;

public interface StoryDao {

	void add(Story story);

	List<Story> findindex();

	Story findOne(int story_id);

	List<Story> findStory(int usid);


    int findStorySize();

    List <Story>getAllStory(int page, int pageSize);
}
