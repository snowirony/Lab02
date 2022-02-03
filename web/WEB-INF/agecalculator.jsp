<%-- 
    Document   : agecalculator
    Created on : Jan 30, 2022, 1:22:41 PM
    Author     : Ronald Tran
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Age Calculator</title>
    </head>
    <body>
        <h1>Age Calculator</h1>
        <form method="post" actions="age">
            <label>Age Calculator:</label>
            <input type="text" name="age_input" value="${ageInput}">
            <br>
            <input type="submit" value="Age next birthday">
            <br>
            <a href="arithmetic" name="arithmetic_calculator">Arithmetic Calculator</a>
        </form>
            
        <p>${message}</p>
    </body>
</html>
