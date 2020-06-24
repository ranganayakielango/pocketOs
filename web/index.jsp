<%-- 
    Document   : index
    Created on : 11 Oct, 2019, 11:03:39 PM
    Author     : ranganayaki
--%>

<%@page import="java.util.GregorianCalendar"%>
<%@page import="java.util.Calendar"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Java Utility</title>
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
            .container {
                width: 80%;
                height: 200px;
                margin: auto;
                padding: 10px;
            }
            .one {
                width: 0%;
                height: 200px;
                float: left;
            }
            .two {
                margin-left: 35%;
                height: 400px;
                width: 700px;
                background: rgba(30,5,20,0);
                float: left;
                font-size: 100px;
            }
            .pc{
                color: white;
                font-size: 100px;
            }
         </style>
    </head>
    <body>
        <section class="container">
            <div class="one">
                <a href="Calculator.jsp">CALCULATOR</a><br><br>
                <a href="Convertor.jsp">CONVERTER</a><br><br>
                <a href="translatoretoh.html">TRANSLATOR</a><br><br>
                <a href="ttos.html">TEXT-SPEECH</a><br><br>
                <a href="stot.html">SPEECH-TEXT</a><br><br>
                <a href="calendar.html">CALENDER</a><br><br>
                <a href="fileFrame.html">FILES</a><br><br>
                <a href="ListPhotosServlet">PHOTOS</a><br><br>
                <a href="NoteFrame.html">NOTEBOOK</a><br>
            </div>
            <br><br>
            <div class="two">
                <%
                response.setIntHeader("Refresh", 60);
                response.setContentType("text/html");
                Calendar calendar = new GregorianCalendar();
                String am_pm;
                int hour = calendar.get(Calendar.HOUR);
                int minute = calendar.get(Calendar.MINUTE);
                int month = calendar.get(Calendar.MONTH)+1;
                int day = calendar.get(Calendar.DAY_OF_MONTH);
                int year = calendar.get(Calendar.YEAR);
                if(calendar.get(Calendar.AM_PM) == 0)
                  am_pm = "AM";
                else
                  am_pm = "PM"; 
                String CT = hour+":"+ minute +" "+ am_pm; 
                String CT1 = day+"-"+ month +"-"+ year; 
                out.println("<p class=\"pc\"><b>"+CT+"<br>"+CT1+"</b>");
                //out.println("<p class=\"pc\">"+CT1);
                %>
            </div>
        </section>
    </body>
</html>
