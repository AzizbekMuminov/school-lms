import java.sql.*;
import java.util.ArrayList;

public class DatabaseManager {

    private static String url="jdbc:sqlite:C:\\Users\\Windows10\\Desktop\\SchooLMS\\DataBase\\DB.db";
    private static Connection connection;
    private static ArrayList<User> users;

    public static User login(String id, String password, UserType userType) throws SQLException {

        //if there's no users
        if(users == null)
            updateUsers();

        for (User u: users) {
            if(u.getUserType() == userType)
                if(u.login(id, password)) {
                    u.setClass_id(getGrade(u.getId()));
                    return u;
                }
        }
        //if there's no Student
        return null;
    }

    public static String[][] getTimeTable(String class_id) throws SQLException {
        String[][] arr = new String[6][7];

        int j = 0;
        Statement statement = connection.createStatement();
        ResultSet set = statement.executeQuery("SELECT * " +
                "FROM Time_table " +
                "WHERE class_id = \"" + class_id + "\"");

        for(int i = 0; i < 42; i++){
            arr[j][i % 7] = set.getString(i+2);

            if(i % 7 == 0 && i != 0)
                j++;
        }

        return arr;
    }


    public static String getGrade(String student_id) throws SQLException {
        //returns the class
        if(users == null)
            updateUsers();

        Statement st = connection.createStatement();
        ResultSet set = st.executeQuery("SELECT class_id " +
                "FROM Takes " +
                "WHERE student_id = \"" + student_id +"\"");

        return set.getString("class_id");
    }

    private static void updateUsers() throws SQLException {

        //if there's no connection with DB
        if(connection == null)
            connect();

        users = new ArrayList<>();
        String arr[] = {"Students", "Teachers"};
        UserType arr1[] = {UserType.STUDENT, UserType.TEACHER};
        Statement statement = connection.createStatement();

        //little bit complicated
        for(int i = 0; i < 2; i++) {
            ResultSet set = statement.executeQuery("SELECT * " +
                    "FROM " + arr[i]);
            while (set.next()) {
                users.add(
                        new User(set.getString(1),
                                set.getString(2),
                                set.getString(3),
                                set.getString(4),
                                arr1[i])
                );
            }
        }
    }

    private static void connect() throws SQLException {
        try {
            Class.forName("org.sqlite.JDBC");
            connection = DriverManager.getConnection(url);
        } catch (SQLException e) {
            throw e;
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }
    }
}
