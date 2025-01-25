package lk.ijse.Servlet.Product;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import lk.ijse.BO.BOFactory;
import lk.ijse.BO.ProductBO;

import java.io.IOException;

@WebServlet(name = "ProductDeleteServlet" ,value = "/ProductDeleteServlet")
public class ProductDeleteServlet extends HttpServlet {
    ProductBO productBO = (ProductBO) BOFactory.getBoFactory().getBo(BOFactory.BoType.Product);

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        int productId = Integer.parseInt(req.getParameter("productId"));

        boolean isDeleted = false;
        try{
            isDeleted = productBO.delete(String.valueOf(productId));
            if (isDeleted){
                req.setAttribute("alertType", "success");
                req.setAttribute("alertMessage", "Product deleted successfully.");
            }else{
                req.setAttribute("alertType", "danger");
                req.setAttribute("alertMessage", "Failed to delete product.");
            }
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
        req.getRequestDispatcher("productDelete.jsp").forward(req, resp);
    }
}
