package com.example.WebWorks.StockDetails;

import com.example.WebWorks.DBoperations.DBconnect;
import com.example.WebWorks.DBoperations.StockDB;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.text.SimpleDateFormat;
import java.util.Date;

@WebServlet("/StockDetails/AddStockServlet")
public class AddStockServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        StockDB stock=new StockDB();
        stock.setCusid((int)request.getSession().getAttribute("cusid"));
        stock.setSwg(Float.parseFloat(request.getParameter("swg")));
        stock.setWeight(Float.parseFloat(request.getParameter("weight")));
        stock.setDate(new SimpleDateFormat("dd/MM/yyyy").format(new Date()));
        try
        {
            Connection conn= DBconnect.getConn();
            PreparedStatement pst=conn.prepareStatement("select * from stockdetails where cusid=? and SWG=?");
            pst.setInt(1,stock.getCusid());
            pst.setFloat(2,stock.getSwg());
            ResultSet rs=pst.executeQuery();
            if(rs.next())
            {
                pst=conn.prepareStatement("update stockdetails set weight=?, Date=? where cusid=? and SWG=?");
                pst.setFloat(1,stock.getWeight()+rs.getFloat("weight"));
                pst.setString(2,stock.getDate());
                pst.setInt(3,stock.getCusid());
                pst.setFloat(4,stock.getSwg());
                pst.executeUpdate();
            }
            else {
                PreparedStatement st = conn.prepareStatement("insert into stockdetails values(0,?,?,?,?)");
                st.setInt(1, stock.getCusid());
                st.setFloat(2, stock.getSwg());
                st.setString(3, stock.getDate());
                st.setFloat(4, stock.getWeight());
                st.executeUpdate();
            }
            conn.close();
        }
        catch (Exception ee)
        {
            response.getWriter().println(ee);
        }
        RequestDispatcher requestDispatcher = request.getRequestDispatcher("addstock.jsp");
        requestDispatcher.forward(request,response);
    }
}
