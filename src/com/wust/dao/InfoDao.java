package com.wust.dao;

import com.wust.entity.Info;
import com.wust.util.DBUtil;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 * 对tb_info的操作
 */
public class InfoDao extends BaseDao{
    public List<Info> queryInfoAll(){
        List<Info> infoList = new ArrayList<Info>();
        String sql = "select * from tb_info";

        try {
            conn = DBUtil.getConnection();
            stmt = conn.createStatement();
            rs = stmt.executeQuery(sql);
            while (rs.next()){
                Info info = new Info();
                info.setId(rs.getInt(1));
                info.setInfoType(rs.getInt(2));
                info.setInfoTitle(rs.getString(3));
                info.setInfoContent(rs.getString(4));
                info.setInfoLinkman(rs.getString(5));
                info.setInfoPhone(rs.getString(6));
                info.setInfoEmail(rs.getString(7));
                info.setInfoDate(rs.getString(8));
                info.setInfoState(rs.getInt(9));
                info.setInfoPayfor(rs.getInt(10));
                infoList.add(info);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            DBUtil.closeAll(conn,stmt,null,rs);
        }


        return infoList;
    }
    
    public ArrayList<Info> querySomeInfo(String sql)
    {
    	ArrayList<Info> infoList = new ArrayList<Info>();

        try {
            conn = DBUtil.getConnection();
            stmt = conn.createStatement();
            rs = stmt.executeQuery(sql);
            while (rs.next()){
                Info info = new Info();
                info.setId(rs.getInt(1));
                info.setInfoType(rs.getInt(2));
                info.setInfoTitle(rs.getString(3));
                info.setInfoContent(rs.getString(4));
                info.setInfoLinkman(rs.getString(5));
                info.setInfoPhone(rs.getString(6));
                info.setInfoEmail(rs.getString(7));
                info.setInfoDate(rs.getString(8));
                info.setInfoState(rs.getInt(9));
                info.setInfoPayfor(rs.getInt(10));
                infoList.add(info);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            DBUtil.closeAll(conn,stmt,null,rs);
        }


        return infoList;
    }
    
    public Info queryInfoById(String sql)
    {
    	Info info=null;
    	try {
            conn = DBUtil.getConnection();
            stmt = conn.createStatement();
            rs = stmt.executeQuery(sql);
            if (rs.next()){
                info = new Info();
                info.setId(rs.getInt(1));
                info.setInfoType(rs.getInt(2));
                info.setInfoTitle(rs.getString(3));
                info.setInfoContent(rs.getString(4));
                info.setInfoLinkman(rs.getString(5));
                info.setInfoPhone(rs.getString(6));
                info.setInfoEmail(rs.getString(7));
                info.setInfoDate(rs.getString(8));
                info.setInfoState(rs.getInt(9));
                info.setInfoPayfor(rs.getInt(10));
                
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            DBUtil.closeAll(conn,stmt,null,rs);
        }
    	return info;
    }
}
