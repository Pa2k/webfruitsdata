<%-- 
    Document   : addNewFruitsSuccess
    Created on : Aug 11, 2023, 3:43:00 PM
    Author     : Advice KH
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="model.Fruits,java.util.Arrays" %>
<!DOCTYPE html>
<h3>เพิ่มผลไม้สำเร็จ</h3>
<%
    Fruits fruits = (Fruits) session.getAttribute("fruits");
%>
ชื่อ: <%= fruits.getName() %><br/>
สี: <%= fruits.getColor() %><br/>
รสชาติ: <%= fruits.getTaste()%><br/>
ราคา: <%= fruits.getPrice() %><br/>
<a href="showDatabase.jsp">ดูตารางข้อมูลผลไม้</a><br/>
</table>
