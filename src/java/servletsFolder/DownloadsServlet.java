/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servletsFolder;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Blob;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.*;  

/**
 *
 * @author ranganayaki
 */
public class DownloadsServlet extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            try {
                Class.forName("oracle.jdbc.driver.OracleDriver");
                Connection con = DriverManager.getConnection(
                        "jdbc:oracle:thin:@rangu.cqspnptpxu8n.ap-south-1.rds.amazonaws.com:1521:ORCL","admin", "password");

                HttpSession session = request.getSession();
                String dir = (String)session.getAttribute("dir");
                PreparedStatement ps = con.prepareStatement("select * from filetable2 where \"name\"=?");
                String name = request.getParameter("name");
                ps.setString(1, name);
                ResultSet rs = ps.executeQuery();
                if (rs.next()) {//now on 1st row  

                    Blob b = rs.getBlob(2);//2 means 2nd column data  
                    byte barr[] = b.getBytes(1, (int) b.length());//1 means first image 
                    File theDir = new File(dir+"://PocketOSDownloads");

// if the directory does not exist, create it
                    if (!theDir.exists()) {
                        System.out.println("creating directory: " + theDir.getName());
                        boolean result = false;

                        try {
                            theDir.mkdir();
                            result = true;
                        } catch (SecurityException se) {
                            //handle it
                        }
                        if (result) {
                            System.out.println("DIR created");
                        }
                    }
                    
                    String saveName = dir+":\\PocketOSDownloads\\" + name;
                    out.println("File Saved at " + saveName);
                    FileOutputStream fout = new FileOutputStream(saveName);
                    fout.write(barr);

                    fout.close();
                }//end of if  
                System.out.println("ok");

                con.close();
            } catch (Exception e) {
                out.print(e);
            }
            //out.println("<a href=\"FileHomePage.html\">HOME</a><a href=\"FileHomePage.html\">HOME</a>");
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>
}
