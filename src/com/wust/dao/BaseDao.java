package com.wust.dao;

import com.wust.util.DBUtil;

import java.sql.*;

public class BaseDao {
    protected Connection conn = null;
    protected Statement stmt = null;
    protected PreparedStatement pstmt = null;
    protected ResultSet rs = null;
}
