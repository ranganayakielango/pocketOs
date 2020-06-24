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

public class AddFileServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        try {
            // Apache Commons-Fileupload library classes
            DiskFileItemFactory factory = new DiskFileItemFactory();
            ServletFileUpload sfu  = new ServletFileUpload(factory);

            if (! ServletFileUpload.isMultipartContent(request)) {
                System.out.println("sorry. No file uploaded");
                return;
            }

            // parse request
            List items = sfu.parseRequest(request);
            FileItem  id = (FileItem) items.get(0);
            String name =  id.getString();
            
            FileItem title = (FileItem) items.get(1);
            String   ext =  title.getString();

            // get uploaded file
            String filename = name+ext;
            FileItem file = (FileItem) items.get(2);
                        
            // Connect to Oracle
            Class.forName("oracle.jdbc.driver.OracleDriver");
            Connection con = DriverManager.getConnection("jdbc:oracle:thin:@rangu.cqspnptpxu8n.ap-south-1.rds.amazonaws.com:1521:ORCL","admin", "password");
            con.setAutoCommit(false);

            PreparedStatement ps = con.prepareStatement("insert into filetable2 values(?,?)");
            ps.setString(1, filename);
           // ps.setString(2, phototitle);
            // size must be converted to int otherwise it results in error
            ps.setBinaryStream(2, file.getInputStream(), (int) file.getSize());
            ps.executeUpdate();
            con.commit();
            con.close();
            out.println("File Added Successfully.");
        }
        catch(Exception ex) {
            out.println( "Error --> " + ex.getMessage());
        //out.println("<a href=\"FileHomePage.html\">HOME</a><a href=\"FileHomePage.html\">HOME</a>");
        }
        
    } 
}