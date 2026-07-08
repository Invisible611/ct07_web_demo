package controller;

import dao.ProductDAO;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

@WebServlet("/product")
public class ProductServlet extends HttpServlet {

    @Override
   protected void doGet(HttpServletRequest request,
            HttpServletResponse response)
            throws ServletException, IOException {

        HttpSession session = request.getSession(false);

        if (session == null || session.getAttribute("user") == null) {
            response.sendRedirect("login.jsp");
            return;
        }

        ProductDAO dao = new ProductDAO();

        request.setAttribute("list", dao.getAllProducts());

        request.getRequestDispatcher("sanpham.jsp")
                .forward(request, response);
    }
}