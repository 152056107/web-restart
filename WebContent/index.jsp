<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.text.Format"%>
<%@page import="java.text.DateFormat"%>
<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" 
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<%@ include  file="top.jsp" %>
<%!
	int count =0;
	public int getCount(){
		count++;
		return count;
	}
%>
<%
	Date date=new Date();
	DateFormat dateFormate=new SimpleDateFormat("yyyy-MM-dd ");
	String today=dateFormate.format(date);
	
	

%>
当前时间：<%=today %>
你是第<%=getCount() %>个访问本站的人
<br/>
<jsp:include page="bottom.jsp"/>
<jsp:forward page="bottom.jsp">
<jsp:param name="id" value="1"/>
</jsp:forward>
</body>
</html>