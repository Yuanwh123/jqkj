package sm.handler;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import sm.utils.constant.SessionEnum;

public class LoginMethodInterceptor extends HandlerInterceptorAdapter{
	public LoginMethodInterceptor() {
    }
	
	 public void afterCompletion(HttpServletRequest request, HttpServletResponse response, Object handler, Exception ex) throws Exception {
		 
	 }
	 public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {
		 //获取请求的url
		 String url = request.getRequestURI();
		
		
		 //判断url是否是公开地址
		 if(url.indexOf("login")>=0||url.indexOf("first")>=0) {
			 //如果进行登入操作,放行
			 return true;
		 }
		 /*
		  * api通行
		  */
		 if(url.startsWith("/goods")) {
			 //如果进行登入操作,放行
			 return true;
		 }
		 //判断session
		 HttpSession session =request.getSession();
		//从session中取出用户份信息 
		 String username =(String)session.getAttribute(SessionEnum.ADMIN.getValue());
		 String[] names = session.getValueNames();
		 for(int i=0;i<names.length;i++) {
			 System.out.println(names[i]+","+session.getValue(names[i]));
		 }
		 if(username != null) {
			 //身份存在,放行
			 return true;
		 }
		 if(url.indexOf("second")>0||url.indexOf("third")>0) {
			 response.sendRedirect("../login");
		 }else {
			 response.sendRedirect("login");
		 }
		//执行这里表示用户身份需要验证，跳转到登录界面
		 //request.getRequestDispatcher("/login").forward(request, response);
		//return false表示拦截，不向下执行  
		
		 return false;
	 }
	 
	 public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler, ModelAndView modelAndView) throws Exception {
		 
	 }
}
