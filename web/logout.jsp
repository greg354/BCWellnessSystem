<%-- 
    Document   : logout
    Created on : Jul 9, 2025, 12:05:57 PM
    Author     : marku
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

    <%@ page session="true" %>
    <%
    session.invalidate();
    response.sendRedirect("login.jsp");
    %>

