
<%@ page import="java.util.HashSet" %>
<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2016/8/27
  Time: 11:10
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<script src="js/jquery-3.0.0.js"></script>

<script>

    /**
    *
     */
    $(function () {
        window.setInterval("getData()", 500);
    })

    function getData() {

        $.post("fuwuqi.jsp", function (data) {
            $("#content_left").html(data)

        });
    }

    function send() {
        $.post("msgchuli.jsp", $("#f").serialize(), function () {
            $("#t").val("");


        });
    }
    function keyboard() {
        if (event.keyCode == 13) {
            send();
        }


    }


</script>


<html>
<head>
    <title>欢迎光临聊天室</title>
    <style type="text/css">


        #content {
	width: 1005px;
	border: 1px solid #A2A2A2;
	margin-right: auto;
	margin-left: auto;
	height: 700px;
        }

        #content_left {
	float: left;
	height: 500px;
	width: 800px;
	border: 1px solid #A1A1A1;
	overflow: scroll;
        }

        #content_right {
	float: right;
	height: 500px;
	width: 200px;
	border: 1px solid #A1A1A1;
	overflow: scroll;
        }

        #content_buttom {
	clear: both;
	width: 1005px;
	height: 150px;
	padding: 10px;
	line-height: 100px;
        }
    </style>
</head>
<body>
<div id="content">
    <div id="content_left">
        <%
            String str = (String) application.getAttribute("msg");

            out.print(str);


        %>
    </div>

    <div id="content_right">
        <%
            HashSet list = (HashSet) application.getAttribute("usernames");
            for (Object obj : list) {
                out.print(obj + "<br/>");

            }
        %>
    </div>

    <div id="content_buttom">
        <form action="javascript:void(0)" method="post" id="f">
            请输入聊天信息:<input type="text" name="msg" id="t" onKeyPress="keyboard()"/>
            <input type="button" value="发送" onClick="send()"/>
        </form>

    </div>
</div>


</body>
</html>
