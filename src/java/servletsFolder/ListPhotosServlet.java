/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servletsFolder;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class ListPhotosServlet extends HttpServlet {
   
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        try {
            Class.forName("oracle.jdbc.driver.OracleDriver");
            Connection con = DriverManager.getConnection("jdbc:oracle:thin:@rangu.cqspnptpxu8n.ap-south-1.rds.amazonaws.com:1521:ORCL","admin", "password");
            PreparedStatement ps = con.prepareStatement("select * from fileTable2 where \"name\" like '%.jpg'");
            ResultSet rs = ps.executeQuery();
            out.println("<body bgcolor='black'>");
            out.println("<center>");
            out.println("<h1>PHOTOS</h1>");
            
            while ( rs.next()) {
                  //out.println("<h4>" + rs.getString("title") + "</h4>");
                  String name = rs.getString("name");
                  //out.println("<h4>" + name + "</h4>");
                  //out.println( rs.getBinaryStream("PHOTO"));
                  //out.println("<img width='30%' src=DisplayPhoto?id=" +  rs.getString("id") + "></img> <p/>");
                  out.println("<img width='30%' src=DisplayPhoto?name=" +  name + "></img> <p/>");
                  
            }
            out.println("</center>");
            out.println("</body>");
            con.close();
        }
        catch(Exception ex) {

        }
        finally { 
            out.close();
        }
    } 

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        processRequest(request, response);
    } 

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        processRequest(request, response);
    }
}