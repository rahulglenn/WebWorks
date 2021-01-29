package com.example.WebWorks.Validations;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import java.io.IOException;
import java.util.regex.Pattern;

@WebServlet("/RegisterValidation")
public class RegisterValidation extends HttpServlet {
    @Override
    public void service(ServletRequest req, ServletResponse res) throws ServletException, IOException {
        String OwnerName=req.getParameter("name").trim();
        String PhoneNum=req.getParameter("phone").trim();
        String Password=req.getParameter("pass");
        String RePassword=req.getParameter("repass");
        Boolean CheckName=Pattern.matches("^[A-Za-z\\s]{1,}[\\.]{0,1}[A-Za-z\\s]{0,}$",OwnerName);
        Boolean CheckPhone=Pattern.matches("^[2-9]{1}[0-9]{9}$",PhoneNum);
        Boolean CheckPassword=Pattern.matches("^(?=.*[0-9])(?=.*[a-z])(?=.*[A-Z])(?=.*[@#$%^&+=])(?=\\S+$).{8,}$",Password);
        if(OwnerName.isEmpty()){
            System.out.println("Owner name can't be empty");
        }
        else if(CheckName==false){
            System.out.print("Enter a Proper Name");
        }
        else if(PhoneNum.isEmpty()){
            System.out.println("Phone Number is empty");
        }
        else if(CheckPhone==false){
            System.out.println("Enter a Valid phone Number");
        }
        else if(Password.isEmpty()) {
            System.out.println("Password cannot be empty");
        }
        else if(CheckPassword==false){
            System.out.println("Password does not meet the requirements");
        }
        else if(Password.equals(RePassword)==false){
            System.out.println("Retype the password properly");
        }
        else{
            RequestDispatcher rd=req.getRequestDispatcher("RegisterServlet");
            rd.forward(req,res);
        }


    }
}
