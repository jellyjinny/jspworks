package com.filter;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;

public class InitParamFilter implements Filter{

	private FilterConfig filterConfig = null;
	
	@Override
	public void init(FilterConfig filterConfig) throws ServletException {
		this.filterConfig = filterConfig;
		System.out.println("Filter01 초기화...");
	}

	@Override
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
			throws IOException, ServletException {	
		
		response.setContentType("text/html;  charset=utf8"); //문서유형
		
		PrintWriter write = response.getWriter();
		
		String id = request.getParameter("id");
		String passwd = request.getParameter("passwd");	
		
		//파라미터 param1, pram2는 web.xml 등록 예정 
		String param1 = filterConfig.getInitParameter("param1"); 
		String param2 = filterConfig.getInitParameter("param2"); 
		
		String message= "";
		if(id.equals(param1) && passwd.equals(param2)) {
			message = "로그인 성공했습니다.";
		}else {
			message = "로그인 실패했습니다.";
		}
		
		write.println(message);  //메시지를 브라우저에 출력함
		
		chain.doFilter(request, response);  //인증 필터 실행
	}

	@Override
	public void destroy() {
		System.out.println("filter01 해제..");
	}

	
}
