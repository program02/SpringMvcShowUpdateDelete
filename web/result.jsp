<%-- 
    Document   : result
    Created on : Aug 29, 2021, 2:14:56 PM
    Author     : Student
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>
            tr,th,td{border:1px solid black}
            table{border-collapse: collapse}
        </style>
    </head>
    <body>
        <table>
            <tr>
                <th>ID </th>
                <th>Name </th>
                <th>Email </th>
                <th>Round </th>
                <th>Delete </th>
                <th>Update </th>
            </tr>
            <c:forEach var="s" items="${students}">
                <tr>
                    <td>${s.id} </td>
                    <td>${s.name} </td>
                    <td>${s.email} </td>
                    <td>${s.round} </td>
                    <td>
                        <form action='delete' method='post'>
                            <input type="hidden" name="id" value="${s.id}"/>
                            <input type="submit" value="Delete"/>
                        </form>
                    </td>
                    <td>
                        <form action='updatef' method='post'>
                            <input type="hidden" name="id" value="${s.id}"/>
                            <input type="hidden" name="name" value="${s.name}"/>
                            <input type="hidden" name="email" value="${s.email}"/>
                            <input type="hidden" name="round" value="${s.round}"/>
                            <input type="submit" value="Update"/>
                        </form>
                    </td>
                </tr>
            </c:forEach>
        </table>
    </body>
</html>
