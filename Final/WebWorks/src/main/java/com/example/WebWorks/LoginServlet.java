package com.example.WebWorks;

import com.example.WebWorks.DBoperations.DBconnect;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.text.SimpleDateFormat;
import java.util.Date;

@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String uname= request.getParameter("uname");
        PrintWriter out= response.getWriter();
        String pass=request.getParameter("pass");
        try {
            Connection conn = DBconnect.getConn();
            PreparedStatement st = conn.prepareStatement("Select * from customerlogin where Username=? AND Password=?");
            st.setString(1, uname);
            st.setString(2, pass);
            ResultSet rs = st.executeQuery();
            if (rs.next()) {
                HttpSession session=request.getSession();
                int cusid=rs.getInt("cusid");
                String cname=rs.getString("Name");
                session.setAttribute("cusid",cusid);
                session.setAttribute("name",cname);
                st=conn.prepareStatement("select * from logfile where cusid=? and logid=(select max(logid) from logfile where cusid=?)");
                st.setInt(1,cusid);
                st.setInt(2,cusid);
                ResultSet rs2=st.executeQuery();
                rs2.next();
                session.setAttribute("date",rs2.getString("Date"));
                st=conn.prepareStatement("insert into logfile values(0,?,?,?,0,?)");
                st.setInt(1,cusid);
                st.setString(2,cname);
                st.setString(3,new SimpleDateFormat("dd/MM/yyyy").format(new Date()));
                st.setString(4,"Logged In!");
                st.executeUpdate();
                RequestDispatcher rd = request.getRequestDispatcher("dashboard.jsp");
                rd.forward(request, response);
            }
            else
            {
                out.println("<script type=\"text/javascript\">");
                out.println("alert('Username not found Please Register);");
                out.println("location='login.jsp';");
                out.println("</script>");
            }
            conn.close();
        }
        catch(Exception ee)
        {

            RequestDispatcher rd= request.getRequestDispatcher("/AddOnServices/errorpage.jsp");
            rd.forward(request,response);
            //response.getWriter().println(ee);
        }

}}
