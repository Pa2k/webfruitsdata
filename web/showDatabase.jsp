<%-- 
    Document   : retireJsp
    Created on : Aug 11, 2023, 11:13:20 PM
    Author     : Advice KH
--%>

<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>ตารางผลไม้</title>
    </head>
    <body>
    <center>
        <table border="1">
            <tr>               
                <th>name </th> 
                <th>color </th>
                <th>taste </th> 
                <th>price</th> 
            </tr>
            <%
                //retrive data from database to jsp
                try {
                    Class.forName("com.mysql.cj.jdbc.Driver");
                    Connection connection = DriverManager.getConnection(
                            "jdbc:mysql://localhost:3306/pak",
                            "root", "12345");

                    Statement st;
                    st = connection.createStatement();

                    String str = "Select * from fruits";
                    ResultSet rs = st.executeQuery(str);
                    while (rs.next()) {
            %>
            <tr>               
                <td><%=rs.getString("name")%></td>
                <td><%=rs.getString("color")%></td>  
                <td><%=rs.getString("taste")%></td>
                <td><%=rs.getInt("price")%></td>

            </tr>
            <% }
                } catch (Exception e) {

                }
            %>
        </table>
    </center>
</body>
</html>

