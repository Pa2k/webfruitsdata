<%-- 
    Document   : addNewFruits
    Created on : Aug 11, 2023, 3:19:09 PM
    Author     : Advice KH
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>เพิ่มข้อมูลผลไม้</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
    </head>
    <body>
        <h3>เพิ่มข้อมูลผลไม้</h3>
        <form action = "AddNewFruitsMySQL">
            ชื่อ:<input type ="text" name ="fruitsName"><br/>
            สี:<input type ="text" name ="color"><br/>
            รสชาติ:<input type ="text" name ="taste"><br/>
            ราคา:<input type ="text" name ="price"><br/>
            <input type="submit" value = เพิ่มผลไม้>
        </form>  
    </body>
</html>

