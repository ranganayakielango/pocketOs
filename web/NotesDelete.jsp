<%-- 
    Document   : Download
    Created on : 14 Oct, 2019, 12:19:13 AM
    Author     : ranganayaki
--%>

<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.io.PrintWriter"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>DELETE</title>
        <style>
            div{background-color:rgba(250,128,114,0.4);text-align:center;text-transformation:uppercase;width:500px;height:300px;}
            body{font-family:calibri; align-content: center; background-image: url("bg.jpg")}
            a:link, a:visited {
                background-color: rgba(30,5,20,0.4);
                color:white;
                padding: 14px 25px;
                text-align: center; 
                text-decoration: none;
                display: inline-block;
                width: 100px;
            }
            a:hover, a:active {
                background-color:rgba(0,0,0,0.1);
                    color:black;
                    }
         </style>
    </head>
    <body>
    <center>
        <h3>Choose the file to be deleted</h3>
        <%
            response.setContentType("text/html;charset=UTF-8");
            //PrintWriter out = response.getWriter();
            try {
                session.setAttribute("dir",request.getParameter("dir"));
                Class.forName("oracle.jdbc.driver.OracleDriver");
                Connection con = DriverManager.getConnection("jdbc:oracle:thin:@rangu.cqspnptpxu8n.ap-south-1.rds.amazonaws.com:1521:ORCL","admin", "deepikrish");
                PreparedStatement ps = con.prepareStatement("select \"name\" from notedata");
                ResultSet rs = ps.executeQuery();
                //out.println("<h1>FILES</h1>");
                while ( rs.next()) {
                    String name=rs.getString(1);
                    //out.println(name);
                    out.println("<a href=DeleteNoteServlet?name="+name+">"+name+"</a><br>");
                      //out.println("<h4>" + rs.getString("title") + "</h4>");
                      //out.println("<img width='30%' src=DisplayPhoto?id=" +  rs.getString("id") + "></img> <p/>");

                }

                con.close();
            }
            catch(Exception ex) {

        }
        %>
    </center>
    </body>
</html>
