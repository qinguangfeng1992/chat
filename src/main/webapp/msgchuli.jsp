
<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2016/8/27
  Time: 11:52
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    //解决乱码
    request.setCharacterEncoding("utf-8");
    String message = (String) application.getAttribute("msg");//==先获取全局的消息内容，
    //==判断，空的就创建一个，没空就直接累计
    if (message == null) {

        message = new String();
    }
//用 Session获取 用户名
    String name = (String) session.getAttribute("name");
//获取 用户输入的消息
    String content = request.getParameter("msg");
    String talking = name + "说:" + content + "<br/>";
//==累加
    message = talking + message;
//==再把  这个消息存 到 Session里面去　
    application.setAttribute("msg", message);
    response.sendRedirect("chatroom.jsp");


%>