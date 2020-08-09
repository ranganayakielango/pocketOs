<%-- 
    Document   : Upload
    Created on : 14 Oct, 2019, 12:06:05 AM
    Author     : ranganayaki
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>UPLOAD</title>
    <style>
        div{background-color:rgba(30,5,20,0.4);;text-align:center;text-transformation:uppercase;width:40%;height:300px;}
        body{font-family:calibri;}
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
        <div>
        <form id="form01" enctype="multipart/form-data" action="AddFileServlet" method="post">
            <br><br>
            <table style="align:center">
                <tr style="text-align:left">
                    <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Enter File name </td>
                    <td><input  type="text"  name="id"/></td>
                </tr>
                <tr style="text-align:left">
                    <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Choose the file type </td>
                    <td> <select name="ext">
                            <option value=".txt">TEXT</option>
                            <option value=".jpg">IMAGE</option>
                            <option value=".docx">WORD</option>
                            <option value=".pptx">PPT</option>
                            <option value=".pdf">PDF</option>
                            <option value=".xlsx">EXCEL</option>
                        </select> 
                    </td>
                </tr>
                <tr style="text-align:left">
                    <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Select the file  </td>
                    <td><input type="file"  name="photo"/>
                </tr>
            </table>
            <p/>
            <input class="but" type="submit" value="Add File"/>
        </form>
        </div>
    </center>
    </body>
</html>
