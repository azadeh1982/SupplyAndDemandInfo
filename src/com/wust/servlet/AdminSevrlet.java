package com.wust.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.wust.entity.Info;
import com.wust.server.AdminServer;

public class AdminSevrlet extends HttpServlet {

    public AdminSevrlet() {
        super();
    }


    @Override
    public void destroy() {
        super.destroy(); // Just puts "destroy" string in log
        // Put your code here
    }


    @Override
    public void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        doPost(request, response);
    }


    @Override
    public void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        //获取请求method
        String method = request.getParameter("method");
        if (method == null) {
            request.setAttribute("msg", "请求无效！");
            request.getRequestDispatcher("/reviewlist.jsp").forward(request, response);
        }

        //依据method的值跳转到相应的处理方法中
        if (method.equals("sereach")) {
            sereachInfo(request, response);
        } else if (method.equals("sereachById")) {
            sereachById(request, response);
        }

    }


    private void sereachById(HttpServletRequest request,
                             HttpServletResponse response) throws ServletException, IOException {
        // TODO Auto-generated method stub
        //获取Id
        ArrayList<Info> infos = new ArrayList<>();
        int id = Integer.parseInt(request.getParameter("moneyID") == null ? "0" : request.getParameter("moneyID"));
        Info info = AdminServer.getAdminServer().sereachById(id);
        infos.add(info);
        if (info == null) {
            request.setAttribute("msg", "输入的id不存在");
        }
        //便于前台统一显示返回一个info集
        request.setAttribute("infos", infos);
        request.getRequestDispatcher("/admin/reviewlist.jsp").forward(request, response);


    }


    private void sereachInfo(HttpServletRequest request,
                             HttpServletResponse response) throws ServletException, IOException {
        // TODO Auto-generated method stub
        //System.out.println("=================");
        //获取payforType，若为空则默认为-1
        int payforType = Integer.parseInt(request.getParameter("payforType") == null ? "-1" : request.getParameter
                ("payforType"));
        //获取stateType，若为空则默认为-1
        int stateType = Integer.parseInt(request.getParameter("stateType") == null ? "-1" : request.getParameter
                ("stateType"));
        //获取showType.infoType，若为空则默认为0；
        int infoType = Integer.parseInt(request.getParameter("showType.infoType") == null ? "0" : request
                .getParameter("showType.infoType"));
        ArrayList<Info> infos = AdminServer.getAdminServer().queryInfo(payforType, stateType, infoType);
        //System.out.println(payforType+":"+stateType+":"+infoType+"=================");
        request.setAttribute("infos", infos);
        request.getRequestDispatcher("/admin/reviewlist.jsp").forward(request, response);

    }


    @Override
    public void init() throws ServletException {
        // Put your code here
    }

}
