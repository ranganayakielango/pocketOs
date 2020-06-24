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
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

public class CreateNoteServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        try {
            // Apache Commons-Fileupload library classes
            String name=request.getParameter("noteName");
            String note=request.getParameter("note");
            // Connect to Oracle
            Class.forName("oracle.jdbc.driver.OracleDriver");
            Connection con = DriverManager.getConnection("jdbc:oracle:thin:@rangu.cqspnptpxu8n.ap-south-1.rds.amazonaws.com:1521:ORCL","admin", "password");
            con.setAutoCommit(false);

            PreparedStatement ps = con.prepareStatement("insert into notedata values(?,?)");
            //out.println(name + note);
            ps.setString(1, name);
            ps.setString(2, note);           
            ps.executeUpdate();
            con.commit();
            con.close();
            out.println("note saved Successfully.");
        }
        catch(Exception ex) {
            out.println( "Error --> " + ex.getMessage());
        }
        //out.println("<a href=\"FileHomePage.html\">HOME</a><a href=\"FileHomePage.html\">HOME</a>");
    } 
}