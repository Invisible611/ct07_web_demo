package servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;


@WebServlet("/cal")
public class processRequest extends HttpServlet {

    protected void processRequest(HttpServletRequest request,
                          HttpServletResponse response)
            throws ServletException, IOException {

        String num1 = request.getParameter("num1");
        String num2 = request.getParameter("num2");
        String opt  = request.getParameter("opt");

        try (PrintWriter out = response.getWriter())
        {
            response.setContentType("text/html;charset=UTF-8");
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<meta charset='UTF-8'>");
            out.println("<title>Servlet calServlet</title>");
            out.println("</head>");
            out.println("<body>");        

            double n1,n2;
            String result="";

            try{
                n1=Double.parseDouble(num1);
                n2=Double.parseDouble(num2);

                switch(opt){
                    case"+":result=n1 + " + " + n2 + " = " + (n1+n2);
                    break;
                    case"-":result=n1 + " - " + n2 + " = " + (n1-n2);
                    break;
                    case"*":result=n1 + " * " + n2 + " = " + (n1*n2);
                    case "/":
                        if(n2==0)
                            result="Divide by zero";
                        else
                            result=n1 + " / " + n2 + " = " + (n1/n2);
                        break;
                }
                out.println("<h2>" + result + "</h2>");
            }catch(NumberFormatException e){
                response.sendRedirect("cal.html");
            }
            out.println("</body>");
            out.println("</html>");

        }
    
}
}
