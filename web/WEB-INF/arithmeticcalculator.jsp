<%-- 
    Document   : arithmeticcalculator
    Created on : Feb 2, 2022, 8:51:20 PM
    Author     : Ronald Tran
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Arithmetic Calculator</title>
    </head>
    <body>
        <h1>Arithmetic Calculator</h1>
        <form method="post" actions="arithmetic">
            <label>First:</label>
            <input type="text" name="first_input" value="${firstInput}">
            <br>
            <label>Second:</label>
            <input type="text" name="second_input" value="${secondInput}">
            <br>
            <input type="submit" name="operation" value="+">
            <input type="submit" name="operation" value="-">
            <input type="submit" name="operation" value="*">
            <input type="submit" name="operation" value="%">
            <br>
            <p name="message">Result: ${message}</p>
            <a href="age">Age Calculator</a>
        </form>
    </body>
</html>
