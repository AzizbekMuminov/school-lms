import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;


public class MainServlet extends HttpServlet {

    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {

    }

    public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
        String id = request.getParameter("id");
        String password = request.getParameter("password");
        PrintWriter pw = response.getWriter();
        User s;

        try {
            s = DatabaseManager.login(id, password, UserType.STUDENT);
            if(s == null) {
                //null means that there's no student with such id and password
                //TODO: return to the main Login page
                System.out.println("There's no such a student");
            }
            //TODO: redirect to the student's cabinet
        } catch (SQLException e) {
            //the problem with DB
            e.printStackTrace();
        }

    }
}