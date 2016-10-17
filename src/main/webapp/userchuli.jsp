<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.HashSet" %>
<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2016/8/27
  Time: 11:35
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
  request.setCharacterEncoding("utf-8");
  String name=request.getParameter("textname");

  session.setAttribute("name",name);


  HashSet list=(HashSet)application.getAttribute("usernames");
  if(list==null){
    list=new HashSet();

  }
  list.add(name);

  application.setAttribute("usernames",list);
response.sendRedirect("chatroom.jsp");

%>
