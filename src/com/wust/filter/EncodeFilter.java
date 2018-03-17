package com.wust.filter;

import javax.servlet.*;
import java.io.IOException;

public class EncodeFilter implements Filter {
    private String code = null;
    @Override
    public void init(FilterConfig filterConfig) throws ServletException {
        code = filterConfig.getInitParameter("code");
    }

    @Override
    public void doFilter(ServletRequest servletRequest, ServletResponse servletResponse, FilterChain filterChain) throws IOException, ServletException {

        servletRequest.setCharacterEncoding(code);
        servletResponse.setContentType("text/html;charset=UTF-8");

        filterChain.doFilter(servletRequest,servletResponse);
    }

    @Override
    public void destroy() {

    }
}
