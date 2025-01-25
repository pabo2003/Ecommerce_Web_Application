package lk.ijse.Servlet.Category;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import lk.ijse.BO.BOFactory;
import lk.ijse.BO.CategoryBO;
import lk.ijse.DTO.CategoryDTO;

import java.io.IOException;

@WebServlet(name = "CategoryServlet", value = "/CategoryServlet"  )
public class CategoryServlet extends HttpServlet {
    CategoryBO categoryBO = (CategoryBO) BOFactory.getBoFactory().getBo(BOFactory.BoType.Category);

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String action = req.getParameter("action");
        String categoryID = req.getParameter("categoryID");
        String categoryName = req.getParameter("categoryName");
        boolean result;

        try {
            switch (action) {
                case "add":
                    if (categoryName.isEmpty()) {
                        req.setAttribute("alertType","danger");
                        req.setAttribute("alertMessage","Category name is required.");
                    }else {
                        result = categoryBO.save(new CategoryDTO(1,categoryName));
                        if (result){
                            req.setAttribute("alertType","success");
                            req.setAttribute("alertMessage","Category added successfully.");
                        }else {
                            req.setAttribute("alertType","danger");
                            req.setAttribute("alertMessage","Failed to add category.");
                        }
                        break;
                    }
                    case "update":
                        if (categoryName.isEmpty()){
                            req.setAttribute("alertType","danger");
                            req.setAttribute("alertMessage","Category name is required.");
                            break;
                        }else {
                            System.out.println(action);
                            result = categoryBO.update(new CategoryDTO(Integer.parseInt(categoryID), categoryName));
                            if (result){
                                req.setAttribute("alertType","success");
                                req.setAttribute("alertMessage","Category updated successfully.");
                            }else {
                                req.setAttribute("alertType","danger");
                                req.setAttribute("alertMessage","Failed to update category.");
                            }
                            break;
                        }
                        case "delete":
                            System.out.println(action);
                            result = categoryBO.delete(String.valueOf(categoryID));
                            if (result){
                                req.setAttribute("alertType","success");
                                req.setAttribute("alertMessage","Category deleted successfully.");
                            }else {
                                req.setAttribute("alertType","danger");
                                req.setAttribute("alertMessage","Failed to delete category.");
                            }
                            break;
                default:
                    req.setAttribute("alertType","warning");
                    req.setAttribute("alertMessage","Invalid action.");
                    break;
            }
        } catch (Exception e) {
            req.setAttribute("alertType","danger");
            req.setAttribute("alertMessage","Error: " + e.getMessage());
        }
        req.getRequestDispatcher("CategoryManage.jsp").forward(req, resp);
    }
}
