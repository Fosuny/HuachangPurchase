package com.hcpurchase.util;

import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.Properties;

public class JDBCUtil {
	private static Properties pro=new Properties();
	static {
		InputStream is=null;
		try {
			is=new FileInputStream("./config/sjm.properties");
			pro.load(is);
		}catch(IOException e) {
			e.printStackTrace();
		}
	}
	
	public static Connection getConnection() throws Exception{
		Class.forName(pro.getProperty("driver"));
		Connection conn = DriverManager.getConnection(pro.getProperty("url"),pro.getProperty("user"),pro.getProperty("password"));
		return conn;
	}
	public static void close(Connection conn,PreparedStatement ps) {
		try {ps.close();}catch(SQLException e) {e.printStackTrace();}
		try {conn.close();} catch(SQLException e) {e.printStackTrace();}
	}
}
