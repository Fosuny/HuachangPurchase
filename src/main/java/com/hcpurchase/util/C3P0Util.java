package com.hcpurchase.util;

import java.sql.Connection;
import org.apache.commons.dbutils.QueryRunner;

import com.mchange.v2.c3p0.ComboPooledDataSource;

public class C3P0Util {
	private static ComboPooledDataSource ds = new ComboPooledDataSource("mysql");
	
	public static Connection getCon() throws Exception{
		Connection conn = ds.getConnection();
		return conn;
	}
	public static QueryRunner getQueryRunner(){
		QueryRunner qr = new QueryRunner(ds);
		return qr;
	}
}
