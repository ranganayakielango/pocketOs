<%-- 
    Document   : Download2
    Created on : 14 Oct, 2019, 1:42:13 AM
    Author     : ranganayaki
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>DOWNLOAD</title>
        <style>
        div{background-color:rgba(250,128,114,0.4);text-align:center;text-transformation:uppercase;width:50%;height:300px;}
        body{font-family:calibri;background-image: url("bg.jpg")}
        .but{
            background-color: black;
            color:white;
            padding: 14px 25px;
            text-align: center; 
            text-decoration: none;
            display: inline-block;
        }
        .but:hover, .but:active {
            background-color:white;
                color:black;
                }
    </style>
    </head>
    <body>
    <center>
        <br>
        <div>
            <br><br><br>
        <h3>CHOOSE THE DRIVE TO STORE THE FILE</h3>
        <form action="Download.jsp">
            <select name="dir" class="but">
                <option value="D">D:</option>
                <option value="E">E:</option>
                <option value="F">F:</option>
                <option value="G">G:</option>
                <option value="H">H:</option>
                <option value="I">I:</option>
                <option value="Y">Y:</option>
                <option value="Y">Z:</option>
            </select>
            <input type="submit" value="OK" class="but">
        </form>
        </div>
    </center>
    </body>
</html>
