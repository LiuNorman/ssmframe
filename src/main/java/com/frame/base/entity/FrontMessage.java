package com.frame.base.entity;


import java.util.Map;

/**
 * 
 *  功能：提示消息类 
 *
 *  @author Norman
 * 
 *  时间：2016年2月9日
 */
public class FrontMessage {

	// 提示消息
	private String message;
	//是否成功
	private boolean flag;
	//消息编码
	private String code;
	//返回url
	private String url;

	private Map data;
	public String getMessage() {
		return message;
	}
	public void setMessage(String message) {
		this.message = message;
	}
	public String getCode() {
		return code;
	}
	public void setCode(String code) {
		this.code = code;
	}
	public String getUrl() {
		return url;
	}
	public void setUrl(String url) {
		this.url = url;
	}

	public boolean isFlag() {
		return flag;
	}

	public void setFlag(boolean flag) {
		this.flag = flag;
	}

	/**
	 * 服务请求成功返回结果
	 *
	 * @return
	 */
	public static FrontMessage resultSuccess(){
		FrontMessage frontMessage = new FrontMessage();
		frontMessage.setCode("success");
		frontMessage.setFlag(true);
		frontMessage.setMessage("请求成功");
		return frontMessage;
	}

	/**
	 * 服务请求失败返回结果
	 *
	 * @return
	 */
	public static FrontMessage resultFail(){
		FrontMessage frontMessage = new FrontMessage();
		frontMessage.setCode("error");
		frontMessage.setFlag(false);
		frontMessage.setMessage("请求失败");
		return frontMessage;
	}

	/**
	 * 服务请求失败返回结果
	 *
	 * @return
	 */
	public static FrontMessage resultFail(String message){
		FrontMessage frontMessage = new FrontMessage();
		frontMessage.setCode("error");
		frontMessage.setFlag(false);
		frontMessage.setMessage(message);
		return frontMessage;
	}
}
