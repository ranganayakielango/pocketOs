package demotest;
 
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
 
/**
 * Servlet implementation class guru_download
 */
public class TableImage extends HttpServlet {
	private static final long serialVersionUID = 1L;
         public TableImage() {
            super();}
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try{  
                Class.forName("oracle.jdbc.driver.OracleDriver");  
                Connection con=DriverManager.getConnection(  
                "jdbc:oracle:thin:@10.1.67.153:1521:orcl","bsc17x42","bsc17x");  

                PreparedStatement ps=con.prepareStatement("select * from imgtable");  
                ResultSet rs=ps.executeQuery();  
                if(rs.next()){//now on 1st row  

                Blob b=rs.getBlob(2);//2 means 2nd column data  
                byte barr[]=b.getBytes(1,(int)b.length());//1 means first image  

                FileOutputStream fout=new FileOutputStream("f:\\Skull6.jpg");  
                fout.write(barr);  

                fout.close();  
                }//end of if  
                System.out.println("ok");  

                con.close();  
                }catch (Exception e) {e.printStackTrace();  }  
  
}
 
 
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}
 
}