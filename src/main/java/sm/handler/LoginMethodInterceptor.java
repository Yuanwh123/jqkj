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
		 //��ȡ�����url
		 String url = request.getRequestURI();
		
		
		 //�ж�url�Ƿ��ǹ�����ַ
		 if(url.indexOf("login")>=0||url.indexOf("first")>=0) {
			 //������е������,����
			 return true;
		 }
		 /*
		  * apiͨ��
		  */
		 if(url.startsWith("/goods")) {
			 //������е������,����
			 return true;
		 }
		 //�ж�session
		 HttpSession session =request.getSession();
		//��session��ȡ���û�����Ϣ 
		 String username =(String)session.getAttribute(SessionEnum.ADMIN.getValue());
		 String[] names = session.getValueNames();
		 for(int i=0;i<names.length;i++) {
			 System.out.println(names[i]+","+session.getValue(names[i]));
		 }
		 if(username != null) {
			 //��ݴ���,����
			 return true;
		 }
		 if(url.indexOf("second")>0||url.indexOf("third")>0) {
			 response.sendRedirect("../login");
		 }else {
			 response.sendRedirect("login");
		 }
		//ִ�������ʾ�û������Ҫ��֤����ת����¼����
		 //request.getRequestDispatcher("/login").forward(request, response);
		//return false��ʾ���أ�������ִ��  
		
		 return false;
	 }
	 
	 public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler, ModelAndView modelAndView) throws Exception {
		 
	 }
}
