package com.example.WebWorks;

import com.example.WebWorks.DBoperations.DBconnect;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String uname= request.getParameter("uname");
        String pass=request.getParameter("pass");
        try {
            Connection conn = DBconnect.getConn();
            PreparedStatement st = conn.prepareStatement("Select cusid from customerlogin where Username=? AND Password=?");
            st.setString(1, uname);
            st.setString(2, pass);
            ResultSet rs = st.executeQuery();
            if (rs.next()) {
                HttpSession session=request.getSession();
                session.setAttribute("cusid",rs.getInt("cusid"));
                response.sendRedirect("dashboard.jsp");
            }
            conn.close();
        }
        catch(Exception ee)
        {
            response.getWriter().println(ee);
        }
}}
