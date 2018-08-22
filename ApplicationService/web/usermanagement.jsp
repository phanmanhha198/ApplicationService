<%-- 
    Document   : usermanagement
    Created on : Aug 22, 2018, 8:18:43 PM
    Author     : macos
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <table border="1">
        <tr>
            <td>username</td>
            <td>password</td>
            <td>role</td>
        </tr>
        <c:forEach items="${ListUser}" var="u">
            <tr>
                <td><c:out value="${u.username}"/></td>
                <td><c:out value="${u.password}"/></td>
                <td><c:out value="${u.role}"/></td>
                <td><a href="DeleteServlet?userid=<c:out value="${u.userid}"/>">Delete</a></td>
                <td><a href="EditServlet?userid=<c:out value="${u.userid}" />">Edit</a></td>
            </tr>
        </c:forEach>
    </table>
    <h1>Create User !</h1>
    <form action="CreateServlet">
        <table>
            <tr>
                <td>username</td>
                <td><input type="text" name="txtusername"/></td>
            </tr>
            
            <tr>
                <td>password</td>
                <td><input type="text" name="txtpassword"/></td>
            </tr>
            
            <tr>
                <td>role</td>
                <td><input type="text" name="txtrole"/></td>
            </tr>
            
            <tr>
                <td colspan="2">
                    <input type="submit" value="create"/>
                </td>
            </tr>
        </table>
    </form>
</html>
