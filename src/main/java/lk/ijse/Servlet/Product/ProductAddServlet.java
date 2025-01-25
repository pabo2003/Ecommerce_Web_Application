package lk.ijse.Servlet.Product;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import lk.ijse.BO.BOFactory;
import lk.ijse.BO.CategoryBO;
import lk.ijse.BO.ProductBO;
import lk.ijse.DTO.CategoryDTO;
import lk.ijse.DTO.ProductDTO;
import lk.ijse.Entity.Category;

import java.io.IOException;
import java.sql.SQLException;

@WebServlet(name = "ProductAddServlet", value = "/ProductAddServlet"  )
public class ProductAddServlet extends HttpServlet {
    CategoryBO categoryBO = (CategoryBO) BOFactory.getBoFactory().getBo(BOFactory.BoType.Category);

    ProductBO productBO = (ProductBO) BOFactory.getBoFactory().getBo(BOFactory.BoType.Product);

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        int productId = Integer.parseInt(req.getParameter("ProductID"));
        String productName = req.getParameter("name");
        String description = req.getParameter("description");
        double price = Double.parseDouble(req.getParameter("price"));
        int quantity = Integer.parseInt(req.getParameter("quantity"));
        int categoryID = Integer.parseInt(req.getParameter("categoryId"));
        String imagePath = req.getParameter("image");

        try {
            Category category = categoryBO.searchByID(String.valueOf(categoryID));
            CategoryDTO categoryDTO = new CategoryDTO(category.getCategoryId(), category.getName());
            boolean isSave = productBO.save(new ProductDTO(productId, productName, price, description, quantity, imagePath, categoryDTO));
            if (isSave) {
                req.setAttribute("alertType", "success");
                req.setAttribute("alertMessage", "Product added successfully.");
            }else {
                req.setAttribute("alertType", "error");
                req.setAttribute("alertMessage", "Failed to add product.");
            }

        } catch (Exception e) {
            req.setAttribute("alertType", "error");
            req.setAttribute("alertMessage", "Error: " + e.getMessage());
        }
        req.getRequestDispatcher("productAdd.jsp").forward(req, resp);
    }
}
