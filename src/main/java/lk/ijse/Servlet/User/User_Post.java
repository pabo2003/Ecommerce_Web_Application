package lk.ijse.Servlet.User;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import lk.ijse.BO.BOFactory;
import lk.ijse.DAO.DAOFactory;
import lk.ijse.DTO.UserDTO;
import lk.ijse.Entity.User;
import lk.ijse.BO.UserBO;
import lk.ijse.DAO.UserDAO;
import org.mindrot.jbcrypt.BCrypt;

import java.io.IOException;

@WebServlet(name = "UserSaveServlet", value = "/AddUserServlet")
public class User_Post extends HttpServlet {

    UserBO userBO = (UserBO) BOFactory.getBoFactory().getBo(BOFactory.BoType.User);
    UserDAO userDAO = (UserDAO) DAOFactory.getDaoFactory().getDAO(DAOFactory.DaoType.User);
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String name = req.getParameter("username");
        String email = req.getParameter("email");
        String password = req.getParameter("password");
        String confirmPassword = req.getParameter("confirmPassword");
        String role = "Customer";

        try {
            User user = userDAO.searchByEmail(email);

            if (user != null) {
                req.setAttribute("error", "Email already exists.");
                req.getRequestDispatcher("login.jsp").forward(req, resp);
                return;
            }

            if (!password.equals(confirmPassword)) {
                req.setAttribute("error", "Passwords do not match.");
                req.getRequestDispatcher("login.jsp").forward(req, resp);
                return;
            }

            String hashedPassword = BCrypt.hashpw(password, BCrypt.gensalt());
            UserDTO userDTO = new UserDTO(1, name, hashedPassword, email, role);

            userBO.save(userDTO);
            req.setAttribute("success", "User register Success.");
            req.getRequestDispatcher("login.jsp").forward(req, resp);

        } catch (Exception e) {
            e.printStackTrace();
            req.setAttribute("error", "Failed to register user. Try again later.");
            req.getRequestDispatcher("login.jsp").forward(req, resp);
        }
    }

}
