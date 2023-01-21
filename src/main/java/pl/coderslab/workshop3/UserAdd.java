package pl.coderslab.workshop3;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import pl.coderslab.entity.User;
import pl.coderslab.entity.UserDao;

@WebServlet("/user/add")
public class UserAdd extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        getServletContext().getRequestDispatcher("/users/add.jsp")
                .forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String userName = req.getParameter("userName");
        String userEmail = req.getParameter("userEmail");
        String userPassword = req.getParameter("userPassword");
        User user = new User(userName, userEmail, userPassword);
        UserDao userDao = new UserDao();
        userDao.create(user);
        resp.sendRedirect(req.getContextPath() + "/user/list");
    }
}
