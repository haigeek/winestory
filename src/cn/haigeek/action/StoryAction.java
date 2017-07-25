package cn.haigeek.action;

import cn.haigeek.entity.Comment;
import cn.haigeek.entity.InfoType;
import cn.haigeek.entity.Story;
import cn.haigeek.entity.pageShow;
import cn.haigeek.service.CommentService;
import cn.haigeek.service.InfoTypeService;
import cn.haigeek.service.StoryService;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
import org.apache.struts2.ServletActionContext;

import java.util.Date;
import java.util.List;
import java.util.Map;

public class StoryAction extends ActionSupport implements ModelDriven<Story>{
	//模型驱动
	Date date = new Date();
	private Story story=new Story();
	private Comment comment=new Comment();
	public Story getModel() {
		return story;
	}
	private StoryService storyService;
    public void setStoryService(StoryService storyService) {
		this.storyService = storyService;
	}
	private CommentService commentService;
	public void setCommentService(CommentService commentService) {
		this.commentService = commentService;
	}
	private InfoTypeService infoTypeService;

	public void setInfoTypeService(InfoTypeService infoTypeService) {
		this.infoTypeService = infoTypeService;
	}

	//到发布界面
	public String toAddPage(){
		//查询类型
		List<InfoType>infoTypes=infoTypeService.findAll();
		ServletActionContext.getRequest().setAttribute("infoTypes",infoTypes);
		return "toAddPage";
	}
	//发布story
	public String add(){
		/*
		 * 模型驱动可以封装story的基本信息
		 * uid是客户的id是不能直接封装的
		 * 将uid封装到Story实体里面的user对象之中
		 */
		story.setDate(date);
		story.setCommentcount(0);
		storyService.add(story);
		return "add";
	}

	//首页文章列表
	public String indexlist(){
		List<Story> indexlist=storyService.findindex();
		//放到域对象
		ServletActionContext.getRequest().setAttribute("indexlist", indexlist);
		return "indexlist";
	}
	public String indexbytype(){
		int typeid=story.getInfoType().getTypeId();
		List<Story> storyList=storyService.findbytype(typeid);
		ServletActionContext.getRequest().setAttribute("storyList",storyList);
		return "indexbytype";
	}

	//分页
	private int pageNow=1;
	private int pageSize=10;

	public int getPageNow() {
		return pageNow;
	}

	public void setPageNow(int pageNow) {
		this.pageNow = pageNow;
	}

	public int getPageSize() {
		return pageSize;
	}

	public void setPageSize(int pageSize) {
		this.pageSize = pageSize;
	}

	public String getAllStory(){
		List <Story>StoryList=storyService.getAllStory(pageNow,pageSize);

		ServletActionContext.getRequest().setAttribute("StoryList", StoryList);
		//Map session= ActionContext.getContext().getSession();
		Map request= (Map) ActionContext.getContext().get("request");
		//session.put("StoryList",StoryList);
		pageShow page=new pageShow(pageNow,storyService.findStorySize(),pageSize);
		request.put("page",page);
		return "getAllStory";
	}


	//查看文章内容
	public String show(){
		//使用模型驱动获取表单提交的storyid值
		int story_id=story.getStory_id();
		Story storyshow=storyService.findOne(story_id);
		ServletActionContext.getRequest().setAttribute("storyshow", storyshow);
		int storyId=story.getStory_id();
		List<Comment> commentshow= commentService.findOne(storyId);
		ServletActionContext.getRequest().setAttribute("commentshow", commentshow);
		return "storyshow";
	
	}
	//修改
	public String update(){
		return "list";
	}
	//删除
	public String delete(){
		return "list";
	}


}
