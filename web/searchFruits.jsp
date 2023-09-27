<%-- 
    Document   : searchFruits
    Created on : Aug 12, 2023, 12:10:52 AM
    Author     : Advice KH
--%>

<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>ค้นหาผลไม้</title>
    </head>
    <body>
    <center>
        <table border="1">
            <tr>
                <th>name </th> 
                <th>color </th>
                <th>taste </th> 
                <th>price </th> 
            </tr>
            <%

                try {
                    Class.forName("com.mysql.cj.jdbc.Driver");
                    Connection connection = DriverManager.getConnection(
                            "jdbc:mysql://localhost:3306/pak",
                            "root", "12345");
                    Statement st;
                    st = connection.createStatement();

                    String fName = request.getParameter("fName");
                    ResultSet rs = st.executeQuery("Select * from fruits where name ='" + fName + "'");
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
                    System.out.println(e.getMessage());
                }
            %>
        </table>
    </center>
</body>
</html>

