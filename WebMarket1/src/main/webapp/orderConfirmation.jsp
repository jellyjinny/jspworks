<%@page import="vo.Product"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.net.URLDecoder"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>주문 정보</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-Fy6S3B9q64WdZWQUiU+q4/2Lc9npb8tCaSX9FK7E8HnRr0Jz8D6OP9dO5Vg3Q9ct" crossorigin="anonymous"></script>
</head>
<%
	request.setCharacterEncoding("utf-8");

	String cartId = session.getId();  //주문 번호 - 새션 아이디
	String shipping_cartId = "";	  //주문 번호
	String shipping_name= "";		  //주문자 이름
	String shipping_shippingDate = "";  //배송일
	String shipping_country = ""; 		//국가
	String shipping_zipCode = "";		//우편번호
	String shipping_addressName = "";	//배송 주소
	
	Cookie[] cookies = request.getCookies();  //쿠키 받기(배열)
	
	if(cookies != null){
		for(int i=0; i<cookies.length; i++){
			Cookie cookie = cookies[i];
			String name = cookie.getName();  //쿠키 이름 변수 할당
			if(name.equals("Shipping_cardId"))  //쿠키 이름 첫글자 대문자임
				shipping_cartId = URLDecoder.decode(cookie.getValue(), "utf-8");  //쿠키 값(디코드)
			if(name.equals("Shipping_name")) 
				shipping_name = URLDecoder.decode(cookie.getValue(), "utf-8");
			if(name.equals("Shipping_shippingDate")) 
				shipping_shippingDate = URLDecoder.decode(cookie.getValue(), "utf-8");
			if(name.equals("Shipping_country")) 
				shipping_country = URLDecoder.decode(cookie.getValue(), "utf-8");
			if(name.equals("Shipping_zipCode")) 
				shipping_zipCode = URLDecoder.decode(cookie.getValue(), "utf-8");
			if(name.equals("Shipping_addressName")) 
				shipping_addressName = URLDecoder.decode(cookie.getValue(), "utf-8");
		}
	}
%>
<body>
	<jsp:include page="./menu.jsp" />
	<div class="jumbotron">
		<div class="container">
			<h1 class="display-3">주문 정보</h1>
		</div>
	</div>
	<div class = "container col-8 alret alert-info">
		<div class="text-center">
			<h1>영수증</h1>
		</div>
		<div class="row justify-content-between">

			<div class="col-4" align="left">
				<strong>배송주소<br> 성명: <%=shipping_name %></strong><br>
				우편번호: <%=shipping_zipCode %><br>
				주소: <%=shipping_addressName %>(<%=shipping_country %>)
			</div>
			<div class="col-4" align="right">
				<p> <em>배송일: <%=shipping_shippingDate %></em>
			</div>
			<div>
				<table class="table rable-hover">
					<tr>
						<th class="text-center">상픔</th>
						<th class="text-center">수량</th>
						<th class="text-center">가격</th>
						<th class="text-center">소계</th>
					</tr>
					<%
						int sum = 0;
						//새 리스트를 생성하고 세션이 있는 장바구니 리스트를 저장
						ArrayList<Product> cartList = (ArrayList<Product>)session.getAttribute("cartlist");
						if(cartList == null){
							cartList = new ArrayList<>();
						}
						
						for(int i=0; i<cartList.size(); i++){
							Product product = cartList.get(i);  //장바구니에 들어있는 상품
							int total = product.getUnitPrice()	* product.getQuantity();	//품목별 합계 = 가격 X 수량
							sum = sum + total;  //전체합계
					%>
					<tr>
						<td class="text-center"><em><%=product.getPname() %></em></td>
						<td class="text-center"><%=product.getQuantity() %></td>
						<td class="text-center"><%=product.getUnitPrice() %></td>
						<td class="text-center"><%=total %></td>
					</tr>
					<% } %>
					<tr>
						<td></td>
						<td></td>
						<td class="text-right"><strong>총액: </strong></td>
						<td class="text-center text-danger"><strong><%=sum %></strong></td>
					</tr>
				</table>
				<a href="./shippingInfo.jsp?cartId=<%=shipping_cartId %>" class="btn btn-secondary"> 이전 </a>
				<a href="./thanksCustomer.jsp" class="btn btn-success"> 주문완료 </a>
			</div>
		</div>	
	</div>	
	<jsp:include page="./footer.jsp" />		
</body>
</html>