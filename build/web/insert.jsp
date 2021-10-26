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
            <form action="insert" method="POST">
                <tr>
                    <td>Id</td>
                    <td><input type="text" placeholder="Enter id" name="id"></td>
                </tr>
                <tr>
                    <td>Name</td>
                    <td><input type="text" placeholder="Enter Name" name="name"> </td>
                </tr>
                <tr>
                    <td>Email</td>
                    <td><input type="text" placeholder="Enter email" name="email"></td>
                </tr>
                <tr>
                    <td>Round</td>
                    <td><input type="text" placeholder="Enter oound" name="round"></td>
                </tr>
                <tr>
                    <td></td>
                    <td> <input type="submit" value="Submit"></td>
                </tr>

            </form>
        </table>
        <form action="show">
            <input type="submit" value="show">
        </form>
        <h1>Hello World!</h1>
    </body>
</html>
