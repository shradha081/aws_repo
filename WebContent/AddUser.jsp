<%@page import="com.minds.Dao.databaseconDao"%>
<%@page import="com.minds.bean.User"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<jsp:useBean id="u" class="com.minds.bean.User"></jsp:useBean>
<jsp:setProperty property="*" name="u"/>




<%
int i=databaseconDao.AddUser(u);
if(i>0){
response.sendRedirect("UserLogin.jsp");
System.out.println("User is added successfully!");

}else{
response.sendRedirect("Registration.jsp");

out.close();
}
%>
