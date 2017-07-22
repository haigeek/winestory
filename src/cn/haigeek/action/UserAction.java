package cn.haigeek.action;

import cn.haigeek.entity.Story;
import cn.haigeek.entity.User;
import cn.haigeek.service.StoryService;
import cn.haigeek.service.UserService;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
import org.apache.struts2.ServletActionContext;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

public class UserAction extends ActionSupport implements ModelDriven<User>{
	private StoryService storyService;
	public void setStoryService(StoryService storyService) {
		this.storyService = storyService;
	}
	//模型驱动
	private User user=new User();
	public User getModel() {
		return user;
	}
	private UserService userService;
	public void setUserService(UserService userService) {
		this.userService = userService;
	}

	//登录的方法
	public String login() {
		User userExist=userService.login(user);
		//判断
		if(userExist!=null){
			//使用session保持登录状态
			HttpServletRequest request=ServletActionContext.getRequest();
			request.getSession().setAttribute("user", userExist);
			return "loginsuccess";
		}else{
			return "login";
		}	
	}
	//注销的方法

	//注册
	public String register() {
		userService.register(user);
		return "registersuccess";
	}
	//显示信息
	public String usershow(){
		//显示story
		int usid=user.getUid();
		
		List<Story> userstory=storyService.findStory(usid);
		ServletActionContext.getRequest().setAttribute("userstory", userstory);
		return "usershow";
	}
	
	//修改-根据id查询
	public String showUserinfo(){
		int uid=user.getUid();
		//根据id查询
		User user=userService.findOne(uid);
		ServletActionContext.getRequest().setAttribute("user", user);
		return "showUserinfo";
	}
	//修改的方法
	public String update() {
		userService.update(user);
		return "update";
	}

	

	
}
