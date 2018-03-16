package com.wust.util;
import java.sql.*;
public class DBUtil {
	private static Connection conn=null;
/**
 * 
 */
	public static Connection getConnection(){
		try{
			//�����������
			Class.forName("com.mysql.jdbc.Driver");
		}catch(ClassNotFoundException e)
		{
			e.printStackTrace();
			System.out.println("����ʧ��....");
		}
		
		try{
			String url="jdbc:mysql://localhost:3306/newsdb";
			conn=DriverManager.getConnection(url,"root","1234");
		}catch(SQLException e){
			e.printStackTrace();
			System.out.println("����ʧ��....");
		}
		return conn;
	}
	
	public static void closeAll(Connection connection,Statement stmt,
			PreparedStatement preparedStatement,ResultSet resultSet)
	{
		//
		try {
			if(connection!=null)
			{
				connection.close();
			}
			
			if(stmt!=null)
			{
				stmt.close();
			}
			if(preparedStatement!=null)
			{
				preparedStatement.close();
			}
			if(resultSet!=null)
			{
				resultSet.close();
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}
	
	public static void main(String[] args)
	{
		Connection connection=DBUtil.getConnection();
		System.out.println(connection);
	}
}
