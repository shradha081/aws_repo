<%@page import="com.minds.Dao.databaseconDao"%>
<%@page import="com.minds.bean.RecipeDetails"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<jsp:useBean id="u" class="com.minds.bean.RecipeDetails"></jsp:useBean>
<jsp:setProperty property="*" name="u"/>




<%
int i=databaseconDao.AddRecipe(u);
if(i>0){
response.sendRedirect("RecipeDetails.jsp");
System.out.println("Recipe is added successfully!");

}else{
response.sendRedirect("AddRecipe.jsp");

out.close();
}
%>
