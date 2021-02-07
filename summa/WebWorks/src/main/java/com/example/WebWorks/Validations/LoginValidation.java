package com.example.WebWorks.Validations;

import com.example.WebWorks.DBoperations.DBconnect;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

@WebServlet("/LoginValidation")
public class LoginValidation extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
        String username=req.getParameter("uname");
        String pass=req.getParameter("pass");
        int failure=0;
        if(username.trim().isEmpty()){
            System.out.println("Username Cant be empty");
            failure=1;
        }
        if(failure==0){
            try {
                Connection conn = DBconnect.getConn();
                PreparedStatement st = conn.prepareStatement("Select Username from customerlogin");
                ResultSet rs = st.executeQuery();
                int login=0;
                while (rs.next()) {
                    if(rs.getString("Username").equals(username)){
                        login=1;
                        break;
                    }
                }
                if(login==0){
                    System.out.print("Username not found Please Register");
                    RequestDispatcher rd=req.getRequestDispatcher("index.jsp");
                    rd.forward(req,res);
                }
                else{
                    RequestDispatcher rd = req.getRequestDispatcher("LoginServlet");
                    rd.forward(req, res);
                }
                conn.close();
            }
            catch(Exception e)
            {
                res.getWriter().println(e);
            }
        }
        else{
            RequestDispatcher rd=req.getRequestDispatcher("index.jsp");
            rd.forward(req,res);
        }
    }
}
