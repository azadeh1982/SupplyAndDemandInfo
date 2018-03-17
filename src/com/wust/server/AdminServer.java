package com.wust.server;

import java.util.ArrayList;

import javax.persistence.QueryHint;

import com.wust.dao.InfoDao;
import com.wust.entity.Info;

/**
 * 单例类，调用getAdminServer可以获取
 * @author 
 *
 */
public class AdminServer {

	private InfoDao infoDao = new InfoDao();
	private AdminServer(){}
	private static AdminServer adminServer=new AdminServer();
	public static AdminServer getAdminServer(){
		return adminServer;
	}
	
	public ArrayList<Info> queryInfo(int payforType,int stateType,int infoType)
	{
		String sql="select * from tb_info where 1=1";
		if(payforType!=-1)
		{
			sql+=" and info_payfor="+payforType;
		}
		if(stateType!=-1)
		{
			sql+=" and info_state="+stateType;
		}
		if(infoType!=0)
		{
			sql+=" and info_type="+infoType;
		}
		
		return infoDao.querySomeInfo(sql);
	}
	
	public Info sereachById(int id)
	{
		String sql="select * from tb_info where id="+id;
		return infoDao.queryInfoById(sql);
	}
	
	public static void main(String[] args) {
        System.out.println("测试");
        System.out.println(AdminServer.getAdminServer().queryInfo(1, 1, 4).get(0).getInfoPhone());
        System.out.println(AdminServer.getAdminServer().sereachById(4).getInfoDate());
	}
}
