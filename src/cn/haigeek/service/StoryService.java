package cn.haigeek.service;

import cn.haigeek.dao.StoryDao;
import cn.haigeek.entity.Story;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;
@Transactional
public class StoryService {
	private StoryDao storyDao;

	public void setStoryDao(StoryDao storyDao) {
		this.storyDao = storyDao;
	}

	public void add(Story story) {
		// TODO Auto-generated method stub
		storyDao.add(story);
	}
	public void addCommentCount(int story_id){
		storyDao.addCommentCount(story_id);
	}
	public List<Story> findall() {
		// TODO Auto-generated method stub
		return null;
	}

	public List<Story> findindex() {
		// TODO Auto-generated method stub
		
		return storyDao.findindex();
	}

	public Story findOne(int story_id) {
		// TODO Auto-generated method stub
		return storyDao.findOne(story_id);
	}
	public List<Story> findStory(int usid) {
		// TODO Auto-generated method stub
		return storyDao.findStory(usid);
	}
    public List <Story>getAllStory(int page,int pageSize){
        return storyDao.getAllStory(page,pageSize);
    }
    public int findStorySize(){
        return storyDao.findStorySize();
    }

//

}
