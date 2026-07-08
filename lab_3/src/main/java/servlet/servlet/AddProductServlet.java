package controller;

import dao.ProductDAO;
import model.Product;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

@WebServlet("/add")
public class AddProductServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request,
            HttpServletResponse response)
            throws ServletException, IOException {

        request.getRequestDispatcher("add.jsp")
                .forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request,
            HttpServletResponse response)
            throws ServletException, IOException {

        String name = request.getParameter("name");

        int supplier =
                Integer.parseInt(request.getParameter("supplier"));

        int category =
                Integer.parseInt(request.getParameter("category"));

        String quantity =
                request.getParameter("quantity");

        double price =
                Double.parseDouble(request.getParameter("price"));

        int stock =
                Integer.parseInt(request.getParameter("stock"));
        
        Product p = new Product(
                0,
                name,
                supplier,
                category,
                quantity,
                price,
                stock
        );

        ProductDAO dao = new ProductDAO();

        if (dao.insert(p)) {

        request.setAttribute("list", dao.getAllProducts());

         request.getRequestDispatcher("sanpham.jsp")
           .forward(request, response);

        } else {

        request.setAttribute("error", "Thêm sản phẩm thất bại!");
        request.getRequestDispatcher("add.jsp")
           .forward(request, response);
        }

    }

}
