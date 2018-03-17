package com.wust.util;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.sql.*;
import java.io.InputStream;
import java.util.Properties;

/**
 * 数据库工具类
 */
public class DBUtil {
    private static Connection conn = null;
    private static String Url = null;
    private static String User = null;
    private static String Password = null;

    static {
        try {
            String path = DBUtil.class.getResource("/").getPath();
            path = path.substring(1,path.indexOf("classes"));
            path = "/"+path + "conf/config.properties";
            Properties prop = new Properties();
            InputStream inputStream = new FileInputStream(new File(path));
            prop.load(inputStream);
            inputStream.close();
            Url = "jdbc:mysql://" + prop.getProperty("ip") + ":" + prop.getProperty("port") + "/" + prop.getProperty
                    ("database");
            User = prop.getProperty("username");
            Password = prop.getProperty("password");
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    /**
     * 获取数据库连接对象
     *
     * @return
     */
    public static Connection getConnection() {
        try {
            // 加载驱动包中的驱动类名，反射机制
            Class.forName("com.mysql.jdbc.Driver");
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }

        try {
            // 通过驱动管理器类获取连接对象
            // URL统一资源定位符，描述数据库服务器的相关信息
            String url = Url;
            conn = DriverManager.getConnection(url, User, Password);
        } catch (SQLException e) {
            e.printStackTrace();
            System.out.println("数据库连接失败....");
        }

        return conn;
    }


    public static void closeAll(
            Connection conn, Statement stmt, PreparedStatement pstmt, ResultSet rs) {
        try {
            // 释放资源
            if (conn != null) {
                conn.close();
            }
            if (stmt != null) {
                stmt.close();
            }
            if (pstmt != null) {
                pstmt.close();
            }
            if (rs != null) {
                rs.close();
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
}
