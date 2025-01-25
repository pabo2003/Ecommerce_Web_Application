package lk.ijse.Servlet.Product;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import lk.ijse.BO.BOFactory;
import lk.ijse.BO.ProductBO;
import lk.ijse.DTO.ProductDTO;

import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

@WebServlet(name = "ProductListServlet", value = "/ProductListServlet"  )
public class ProductListServlet extends HttpServlet {
    ProductBO productBO = (ProductBO) BOFactory.getBoFactory().getBo(BOFactory.BoType.Product);

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        try {
            List<ProductDTO> productDTOS = productBO.getAll();
            req.setAttribute("products", productDTOS);
            RequestDispatcher requestDispatcher = req.getRequestDispatcher("getAllProduct.jsp");
            requestDispatcher.forward(req, resp);
        } catch (Exception e) {
            req.setAttribute("alertType", "danger");
            req.setAttribute("alertMessage", "Failed to load products: " + e.getMessage());
        }
    }
}
