package com.example.WebWorks.Validations;

import javax.servlet.*;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import java.io.IOException;
import java.util.regex.Pattern;

@WebServlet("/ActivationValidation")
public class ActivationValidation extends HttpServlet {
    @Override
    public void service(ServletRequest req, ServletResponse res) throws ServletException, IOException {
        String Email=req.getParameter("email").trim();
        String CompanyName=req.getParameter("cname").trim();
        String Platform=req.getParameter("platform");
        Boolean CheckEmail=Pattern.matches("^[\\w!#$%&’*+/=?`{|}~^-]+(?:\\.[\\w!#$%&’*+/=?`{|}~^-]+)*@(?:[a-zA-Z0-9-]+\\.)+[a-zA-Z]{2,6}$",Email);
        int failure=0;
        if(Email.isEmpty()){
            System.out.println("Email field cant be empty");
            failure=1;
        }
        else if(CheckEmail==false){
            System.out.println("Enter proper email");
            failure=1;
        }
        else if(CompanyName.isEmpty()){
            System.out.println("Company Name cant be empty");
            failure=1;
        }
        if(failure==0){
            System.out.println(Platform);
            if(Platform.equals("Other")){
                String PlatformName=req.getParameter("platname").trim();
                String RecordService=req.getParameter("record");
                String EmployeeService=req.getParameter("employee");
                String StockService=req.getParameter("stock");
                Boolean CheckPlatformName=Pattern.matches("^[a-zA-Z\\s]*$",PlatformName);
                if(PlatformName.isEmpty()){
                    System.out.println("Platform Name cant be Empty");
                    failure=1;
                }
                else if(CheckPlatformName==false){
                    System.out.println("Enter Proper Platform Name");
                    failure=1;
                }
                else if(RecordService==null && EmployeeService==null && StockService==null){
                    System.out.println("Select atleast one service");
                    failure=1;
                }
            }
            if(failure==0){
                RequestDispatcher rd= req.getRequestDispatcher("ActivationServlet");
                rd.forward(req,res);
            }
            else{
                System.out.println("Nothing happens");
            }
        }
        else{
            System.out.println("Nothing happens");
        }

    }
}
