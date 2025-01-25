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

@WebServlet(name = "ProductUpdateServlet", value = "/ProductUpdateServlet"  )
public class ProductUpdateServlet extends HttpServlet {
    CategoryBO categoryBO = (CategoryBO) BOFactory.getBoFactory().getBo(BOFactory.BoType.Category);

    ProductBO productBO = (ProductBO) BOFactory.getBoFactory().getBo(BOFactory.BoType.Product);

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        try{
            int productId = Integer.parseInt(req.getParameter("productId"));
            String productName = req.getParameter("productName");
            String description = req.getParameter("productDescription");
            double price = Double.parseDouble(req.getParameter("productPrice"));
            int quantity = Integer.parseInt(req.getParameter("productQuantity"));
            int categoryId = Integer.parseInt(req.getParameter("categoryId"));
            String imagePath = req.getParameter("productImage");

            Category category = categoryBO.searchByID(String.valueOf(categoryId));
            CategoryDTO categoryDTO = new CategoryDTO(category.getCategoryId(), category.getName());
            boolean isUpdated = productBO.update(new ProductDTO(productId, productName, price, description, quantity, imagePath, categoryDTO)  );
            if(isUpdated){
                req.setAttribute("alertType", "success");
                req.setAttribute("alertMessage", "Product updated successfully.");
            }else{
                req.setAttribute("alertType", "error");
                req.setAttribute("alertMessage", "Failed to update product.");
            }
        } catch (Exception e) {
            req.setAttribute("alertType", "error");
            req.setAttribute("alertMessage", "An error occurred: " + e.getMessage());
        }
        req.getRequestDispatcher("productUpdate.jsp").forward(req, resp);
    }
}
