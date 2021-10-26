<%-- 
    Document   : index2
    Created on : Aug 24, 2021, 10:43:41 AM
    Author     : Student
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <table>
            <form action="update" method="POST">
                <tr>
                    <td>Id</td>
                    <td> <input type="text" placeholder="Enter id" readonly name="id" value="${s.id}"></td>
                </tr>
                <tr>
                    <td>Name</td>
                    <td><input type="text" placeholder="Enter Name" name="name" value="${s.name}"></td>
                </tr>
                <tr>
                    <td>Email</td>
                    <td><input type="text" placeholder="Enter email" name="email" value="${s.email}"></td>
                </tr>
                <tr>
                    <td>Round</td>
                    <td><input type="text" placeholder="Enter oound" name="round" value="${s.round}"></td>
                </tr>
                <tr>
                    <td></td>
                    <td> <input type="submit" value="Submit"></td>
                </tr>

               
            </form>
        </table>

    </body>
</html>
