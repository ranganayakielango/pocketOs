import java.sql.*;  
import java.io.*;  
import java.io.File;
import java.io.IOException;
import java.util.List;
 
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
 
import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;
public class RetrieveImage {  
public static void main(String[] args) {  
try{  
Class.forName("oracle.jdbc.driver.OracleDriver");  
Connection con=DriverManager.getConnection(  
"jdbc:oracle:thin:@localhost:1521:orcl","SYSTEM","goldblock");  
      
PreparedStatement ps=con.prepareStatement("select * from imgtable");  
ResultSet rs=ps.executeQuery();  
if(rs.next()){//now on 1st row  
              
Blob b=rs.getBlob(2);//2 means 2nd column data  
byte barr[]=b.getBytes(1,(int)b.length());//1 means first image  
              
FileOutputStream fout=new FileOutputStream("F:\\STUDIES\\sem5\\wt\\IMAGES\\Skull6.jpg");  
fout.write(barr);  
              
fout.close();  
}//end of if  
System.out.println("ok");  
              
con.close();  
}catch (Exception e) {e.printStackTrace();  }  
}  
}  