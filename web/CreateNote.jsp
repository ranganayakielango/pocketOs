<%-- 
    Document   : CreateNote
    Created on : 14 Oct, 2019, 11:26:52 AM
    Author     : ranganayaki
--%>

<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>CREATING NOTE</title>

    <body>
        <%
            try {
            // Apache Commons-Fileupload library classes
            String name=request.getParameter("noteName");
            String note=request.getParameter("noteVal");
            // Connect to Oracle
            Class.forName("oracle.jdbc.driver.OracleDriver");
            Connection con = DriverManager.getConnection("jdbc:oracle:thin:@rangu.cqspnptpxu8n.ap-south-1.rds.amazonaws.com:1521:ORCL","admin", "deepikrish");
            con.setAutoCommit(false);

            PreparedStatement ps = con.prepareStatement("insert into notedata values(?,?)");
            //out.println(name + note);
            ps.setString(1, name);
            ps.setString(2, note);           
            ps.executeUpdate();
            con.commit();
            con.close();
            out.println("File Added Successfully");
        }
        catch(Exception ex) {
            out.println( "Error --> " + ex.getMessage());
        }
        %>
    </body>
</html>
