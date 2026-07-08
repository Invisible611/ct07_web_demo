package controller;

import dao.ProductDAO;
import model.Product;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

@WebServlet("/edit")
public class EditProductServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request,
            HttpServletResponse response)
            throws ServletException, IOException {

        int id = Integer.parseInt(request.getParameter("id"));

        ProductDAO dao = new ProductDAO();

        Product p = dao.getProductById(id);

        request.setAttribute("product", p);

        request.getRequestDispatcher("edit.jsp")
                .forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request,
            HttpServletResponse response)
            throws ServletException, IOException {

        int id = Integer.parseInt(request.getParameter("id"));

        String name = request.getParameter("name");

        int supplier = Integer.parseInt(request.getParameter("supplier"));

        int category = Integer.parseInt(request.getParameter("category"));

        String quantity = request.getParameter("quantity");

        double price = Double.parseDouble(request.getParameter("price"));

        int stock = Integer.parseInt(request.getParameter("stock"));

        Product p = new Product(
                id,
                name,
                supplier,
                category,
                quantity,
                price,
                stock
        );

        ProductDAO dao = new ProductDAO();

        dao.update(p);

        request.setAttribute("list", dao.getAllProducts());

        request.getRequestDispatcher("sanpham.jsp")
                .forward(request, response);
    }
}