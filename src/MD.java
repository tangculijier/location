import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.sina.sae.util.SaeUserInfo;


public class MD {

	
	  ResultSet rs = null;  
	  PreparedStatement pst=null;
	  Connection con = null;  
	  

	  
//	  String username=SaeUserInfo.getAccessKey();
//	  String password=SaeUserInfo.getSecretKey();
//	  String write_Url = "jdbc:mysql://w.rdc.sae.sina.com.cn:3307/app_towinto";	   
//	  String read_Url="jdbc:mysql://r.rdc.sae.sina.com.cn:3307/app_towinto";

	  String username="root";//���Բ���
	  String password="1";
	  String write_Url = "jdbc:mysql://localhost:3306/location?useUnicode=true&characterEncoding=utf-8";
	  String read_Url = "jdbc:mysql://localhost:3306/location";
	  
	  
	  public Connection getWriteConnection()
	   {
		   //����
		   try {
				Class.forName("com.mysql.jdbc.Driver");
				con = DriverManager.getConnection(write_Url, username,password);
			   System.out.print("���ӳɹ���\n");
			  } catch (Exception ex) 
			  {
				  ex.printStackTrace();
				  System.out.print("����ʧ�ܣ�");
			  }
		return con;
	   }
	   
	   
	   public Connection getReadConnection()
	   {
		   //����
		   try {
				Class.forName("com.mysql.jdbc.Driver");
				con = DriverManager.getConnection(read_Url, username,password);
			   System.out.print("���ӳɹ���\n");
			  } catch (Exception ex) 
			  {
				  ex.printStackTrace();
				  System.out.print("����ʧ�ܣ�");
			  }
		return con;
	   }
	   //�ر����ӷ���
	   public void closeConnection()
	   {
		   try {  
			    if(rs != null) 
			    {  
			     rs.close();  
			     rs = null;  
			    }  
			    if(pst != null) 
			    {  
			     pst.close();  
			     pst = null;  
			    }  
			    if(con != null)
			    {  
			     con.close();  
			     con = null;  
			    }  
			   } catch (SQLException e) 
			   {  
			    e.printStackTrace();  
			   }  
	   }

	   
	   
	public boolean insertLoactionEveryHour(String userId, double latitude,double longitude) {
		String sql="insert into location(userId,lat,longt,time) values('"+userId+"','"+latitude+"','"+longitude+"',"+" now())";
		con=getWriteConnection();
		 if(con!=null)
		 {
			 try {
				    pst = (PreparedStatement) con.prepareStatement(sql);
			        int res=pst.executeUpdate();
			        if(res!=0)
			        {
			        	return true;
			        }
			        return false;
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}finally{
				closeConnection();
			}
			
		 }
		return false;
	}



}
