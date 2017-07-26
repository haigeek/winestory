package cn.haigeek.action;

import cn.haigeek.entity.Comment;
import cn.haigeek.entity.Story;
import cn.haigeek.entity.User;
import cn.haigeek.service.CommentService;
import cn.haigeek.service.StoryService;
import cn.haigeek.service.UserService;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import org.apache.struts2.ServletActionContext;

import javax.servlet.http.HttpServletRequest;
import java.io.*;
import java.util.Date;
import java.util.List;

public class UserAction extends ActionSupport {
	Date date=new Date();
	private File avatar;
	private String avatatFileType;
	private String avatarFileName;
	private String savePathAvatar;
	private StoryService storyService;
	public void setStoryService(StoryService storyService) {
		this.storyService = storyService;
	}
	private User user;
	public User getUser() {
		return user;
	}
	public void setUser(User user) {
		this.user = user;
	}
	private UserService userService;
	public void setUserService(UserService userService) {
		this.userService = userService;
	}
	public CommentService commentService;

	public void setCommentService(CommentService commentService) {
		this.commentService = commentService;
	}

	public File getAvatar() {
		return avatar;
	}

	public void setAvatar(File avatar) {
		this.avatar = avatar;
	}

	public String getAvatatFileType() {
		return avatatFileType;
	}

	public void setAvatatFileType(String avatatFileType) {
		this.avatatFileType = avatatFileType;
	}

	public String getAvatarFileName() {
		return avatarFileName;
	}

	public void setAvatarFileName(String avatarFileName) {
		this.avatarFileName = avatarFileName;
	}

	public String getSavePathAvatar() {
		return savePathAvatar;
	}

	public void setSavePathAvatar(String savePathAvatar) {
		this.savePathAvatar = savePathAvatar;
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
			return "loginfail";
		}	
	}
	//注销的方法
	public String logout(){
		//使用session保持登录状态
		ActionContext.getContext().getSession().clear();
		return "logout";
	}
	//注册
	public String register() {
		user.setJoindate(date);
		userService.register(user);
		return "registersuccess";
	}
	//显示信息
	public String usershow(){
		int uid=user.getUid();
		//根据id查询
		User user=userService.findOne(uid);
		ServletActionContext.getRequest().setAttribute("user", user);
		//显示story
		int usid=user.getUid();
		List<Story> userstory=storyService.findStory(usid);
		ServletActionContext.getRequest().setAttribute("userstory", userstory);

		//显示评论
		int userId=user.getUid();
		List<Comment>usercomment=commentService.findComment(userId);
		ServletActionContext.getRequest().setAttribute("usercomment",usercomment);
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
	//修改个人信息的方法
	public String update() {
		int uid=user.getUid();
		User user2=userService.findOne(uid);
		user2.setUsername(user.getUsername());
		user2.setAddress(user.getAddress());
		user2.setEmail(user.getEmail());
		user2.setAboutme(user.getAboutme());
		user2.setWeibo(user.getWeibo());
		user2.setMusic(user.getMusic());
		user2.setWebsite(user.getWebsite());
		userService.update(user2);
		return "update";
	}
	public String updatePassword(){
		int uid=user.getUid();
		User user3=userService.findOne(uid);
		user3.setPassword(user.getPassword());
		userService.update(user3);
		return "update";
	}
	//上传头像
	public String updateavatar(){
		String path=ServletActionContext.getServletContext().getRealPath("/")+getSavePathAvatar()+"/"+getAvatarFileName();
//		String path=this.getClass().getClassLoader().getResource("upload/avatar").getPath()+"\\"+getAvatarFileName();
//		String path=ServletActionContext.getRequest().getSession().getResource("/upload/avatar")+"\\"+getAvatarFileName();
		String path2="/winestory"+getSavePathAvatar()+"/"+getAvatarFileName();
		try{
			FileOutputStream fos=new FileOutputStream(path);
			FileInputStream fis=new FileInputStream(getAvatar());
			byte[]buffer=new byte[1024];
			int len=0;
			try {
				while ((len=fis.read(buffer))>0){
					fos.write(buffer,0,len);
				}
			} catch (IOException e) {
				e.printStackTrace();
			}
		} catch (FileNotFoundException e) {
			e.printStackTrace();
		}
		int uid=user.getUid();
		User user4=userService.findOne(uid);
		user4.setAvatar(path2);
		userService.update(user4);
		return "update";
	}

	

	
}
