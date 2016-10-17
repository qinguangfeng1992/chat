<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2016/8/27
  Time: 13:33
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    System.out.println("来了个请求");
    String str = (String) application.getAttribute("msg");
    out.print(str);
%>

