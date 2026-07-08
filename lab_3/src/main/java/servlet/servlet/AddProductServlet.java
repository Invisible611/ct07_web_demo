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

    try {

        String name = request.getParameter("name").trim();
        int supplier = Integer.parseInt(request.getParameter("supplier"));
        int category = Integer.parseInt(request.getParameter("category"));
        String quantity = request.getParameter("quantity").trim();
        double price = Double.parseDouble(request.getParameter("price"));
        int stock = Integer.parseInt(request.getParameter("stock"));

        // Kiểm tra dữ liệu
        if (name.isEmpty()) {
            request.setAttribute("error", "Tên sản phẩm không được để trống.");
            request.getRequestDispatcher("add.jsp").forward(request, response);
            return;
        }

        if (supplier <= 0) {
            request.setAttribute("error", "Supplier ID phải lớn hơn 0.");
            request.getRequestDispatcher("add.jsp").forward(request, response);
            return;
        }

        if (category <= 0) {
            request.setAttribute("error", "Category ID phải lớn hơn 0.");
            request.getRequestDispatcher("add.jsp").forward(request, response);
            return;
        }

        if (price < 0) {
            request.setAttribute("error", "Đơn giá không được âm.");
            request.getRequestDispatcher("add.jsp").forward(request, response);
            return;
        }

        if (stock < 0) {
            request.setAttribute("error", "Số lượng tồn kho không được âm.");
            request.getRequestDispatcher("add.jsp").forward(request, response);
            return;
        }

        // Tạo Product
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

    } catch (NumberFormatException e) {

        request.setAttribute("error", "Vui lòng nhập đúng định dạng dữ liệu.");
        request.getRequestDispatcher("add.jsp")
                .forward(request, response);
    }
  }

}


