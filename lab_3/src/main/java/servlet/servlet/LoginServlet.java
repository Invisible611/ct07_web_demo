package controller;

import dao.ProductDAO;
import dao.UserDAO;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/login")
public class LoginServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request,
            HttpServletResponse response)
            throws ServletException, IOException {
        
        String username = request.getParameter("user");
        String password = request.getParameter("pass");

        UserDAO dao = new UserDAO();

        if (dao.login(username, password)) {

            ProductDAO pdao = new ProductDAO();

            request.setAttribute("list",
                    pdao.getAllProducts());

            request.getRequestDispatcher("sanpham.jsp")
                    .forward(request, response);

        } else {

            request.setAttribute("error",
                    "Sai username hoặc password!");

            request.getRequestDispatcher("login.jsp")
                    .forward(request, response);

        }

    }

}