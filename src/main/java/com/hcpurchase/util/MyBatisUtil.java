package com.hcpurchase.util;

import java.io.InputStream;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

public class MyBatisUtil {
	
	public static SqlSession getsqlsession() throws Exception {
		
		InputStream is = Resources.getResourceAsStream("mybatis-config.xml");
		SqlSessionFactory sfb =  new SqlSessionFactoryBuilder().build(is);
		SqlSession session = sfb.openSession();
		
		return session;
	}
	
}
