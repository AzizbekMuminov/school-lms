import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;

import static java.lang.System.out;


public class MainServlet extends HttpServlet {

    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
        PrintWriter printWriter = response.getWriter();

        printWriter.print("Hello Dunya");
    }

    public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
        String id = request.getParameter("id");
        UserType[] arr = {UserType.STUDENT, UserType.TEACHER};
        String password = request.getParameter("password");
        int user_type = Integer.parseInt(request.getParameter("user_type"));
        User u;

        try{
            u = DatabaseManager.login(id, password, arr[user_type-1]);
            if(u == null){
                request.setAttribute("false", false);
                request.setAttribute("username", id);
                request.getRequestDispatcher("/index.jsp").forward(request, response);
            }else
            {
                request.setAttribute("user", u);
                request.getRequestDispatcher("/User_Servlet").forward(request, response);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } catch (ServletException e) {
            e.printStackTrace();
        }

    }
}