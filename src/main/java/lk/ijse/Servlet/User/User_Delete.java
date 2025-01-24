/*
package org.example.ecommerce_web_application.Servlet.User;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import org.example.ecommerce_web_application.BO.BOFactory;
import org.example.ecommerce_web_application.BO.UserBO;
import org.example.ecommerce_web_application.Entity.User;
import org.mindrot.jbcrypt.BCrypt;

import java.io.IOException;

@WebServlet(name = "UserDelete" ,value = "/DeleteAccountServlet")
public class User_Delete extends HttpServlet {
    UserBO userBO = (UserBO) BOFactory.getBoFactory().getBo(BOFactory.BoType.User);

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String email = req.getParameter("email");
        String password = req.getParameter("password");

        System.out.println(email);
        System.out.println(password);

        try {
            User user = userBO.searchByEmail(email);

            if (user == null) {
                req.setAttribute("error", "Email does not exist.");
                req.getRequestDispatcher("UserUpdate.jsp").forward(req, resp);
                return;
            }

            if (!BCrypt.checkpw(password, user.getPassword())) {
                req.setAttribute("error", "Incorrect password.");
                req.getRequestDispatcher("index.jsp").forward(req, resp);
                return;
            }

            userBO.delete(String.valueOf(user.getUserId()));
            req.setAttribute("message", "User Delete successfully.");
            req.getRequestDispatcher("UserUpdate.jsp").forward(req, resp);

        } catch (Exception e) {
            throw new RuntimeException(e);
        }
    }
}

*/
