package com.filter;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;

public class AuthenFilter implements Filter{

	@Override
	public void init( FilterConfig filterconfig) throws ServletException {
		System.out.println("Filter01 초기화...");
	}

	@Override
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
			throws IOException, ServletException {
		
		//한글 인코딩 - 필터처리
		request.setCharacterEncoding("utf-8");
		
		response.setContentType("text/html; charset=utf8");
		PrintWriter writer = response.getWriter();
		
		String name = request.getParameter("name");
		String message="";
		
		//2.입력값이 없을 경우 필터 처리
		if(name == null || name.equals("")) {
			//writer.println("입력된 값은 null입니다.");
			message = "입력된 값은 null입니다.";
			writer.println(message);		
			return; //프로그램 정상 종료
		}
		chain.doFilter(request, response);  //실행 함수
	}
	
	@Override
	public void destroy() {
		System.out.println("filter01 해제..");
	}
	

}