<%@ page import="bean.RegisterDao" %><%--
  Created by IntelliJ IDEA.
  User: Roma
  Date: 11.09.2016
  Time: 18:09
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<jsp:useBean id="obj" class="bean.User"/>
<jsp:setProperty name="obj" property="*"/>

<%
    int status = RegisterDao.register(obj);
    if (status > 0) {
        out.println("Have done successfully");
    } else {
        out.println("Some error");
    }
%>
