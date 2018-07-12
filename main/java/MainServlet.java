import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Calendar;
import java.util.Date;

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
        UserType userType = arr[user_type-1];
        Calendar cal1 = Calendar.getInstance();
        int td = cal1.get(Calendar.DAY_OF_WEEK);
        int yt = td - 1;

        if(yt < 1)
            yt += 7;

        try{
            u = DatabaseManager.login(id, password, userType);
            if(u == null){
                request.setAttribute("username", id);
                request.getRequestDispatcher("/index.jsp").forward(request, response);
            }else
            {
                Student s = (Student) u;
                //cast String[] to ArrayList
                String[][] array = DatabaseManager.getTimeTable(((Student) u).getClass_id());
                ArrayList<String> time_table_yesterday = new ArrayList<>(Arrays.asList(array[yt]));
                ArrayList<String> time_table_today = new ArrayList<>(Arrays.asList(array[td]));
                ArrayList<Homework> w = DatabaseManager.getHomework(((Student) u).getClass_id(), cal1);


                if(userType == UserType.STUDENT){
                    request.setAttribute("user", s);
                    request.setAttribute("arr_yesterday", time_table_yesterday);
                    request.setAttribute("homework", w);
                    request.setAttribute("arr_today", time_table_today);
                    request.getRequestDispatcher("/cabinet.jsp").forward(request, response);
                }
                else{
                    Teacher t = (Teacher) u;
                }
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } catch (ServletException e) {
            e.printStackTrace();
        }

    }
}