import java.sql.*;
import java.util.ArrayList;
import java.util.HashMap;

public class DatabaseManager {

    private static String url="jdbc:sqlite:C:\\Users\\Windows10\\Desktop\\SchooLMS\\DataBase\\DB.db";
    private static volatile Connection connection;
    private static ArrayList<Student> students;
    private static ArrayList<Teacher> teachers;
    private static HashMap<String, ArrayList<Homework>> homeworks;
    private static ArrayList<MyClass> classes;

    public static User login(String id, String password, UserType userType) throws SQLException {

        //if there's no users
        if(students == null || teachers == null)
            updateUsers();

        if(userType == UserType.STUDENT){
            for (Student s: students) {
                if(s.login(id, password)) {
                    return s;
                }
            }
        }else{
            for (Teacher s: teachers) {
                if(s.login(id, password)) {
                    return s;
                }
            }
        }
        //if there's no Student
        return null;
    }

    private void updateDB() throws SQLException {
        updateUsers();
        updateClasses();
        updateHomeworks();
    }

    public static ArrayList<Homework> getHomework(String class_id) throws SQLException {
        if(homeworks == null || homeworks.isEmpty())
            updateHomeworks();

        return homeworks.get(class_id);
    }

    private static void updateHomeworks() throws SQLException {
        if(connection == null)
            connect();
        if(classes == null || classes.isEmpty())
            updateClasses();

        homeworks = new HashMap<>();
        Statement st = connection.createStatement();

        for (int i =0; i < classes.size(); i++) {
            String s = classes.get(i).getClass_id();
            ArrayList<Homework> hw = new ArrayList<>();
            ResultSet set = st.executeQuery("SELECT * FROM Homeworks " +
                    "WHERE class_id = \"" + s + "\"");

            while(set.next()){
                hw.add(new Homework(set.getString("date"),
                        set.getString("subject_id"),
                        set.getString("homework"), s));
            }

            homeworks.put(s, hw);
        }

    }

    private static void updateClasses() throws SQLException {
        Statement st = connection.createStatement();
        classes = new ArrayList<>();
        ResultSet set = st.executeQuery("SELECT *" +
                "FROM Classes");
        ArrayList<User> u = new ArrayList<>();

        while (set.next()){
            String s = set.getString("class_id");
            classes.add(new MyClass(s,
                    getTimeTable(s),
                    set.getString("teacher_id")));

        }

        set = st.executeQuery("SELECT * " +
                "FROM  Takes ");
    }

    public static String[][] getTimeTable(String class_id) throws SQLException {
        if(connection == null)
            connect();

        String[][] arr = new String[6][7];

        int j = 0;
        Statement st = connection.createStatement();
        ResultSet set = st.executeQuery("SELECT * " +
                "FROM Time_table " +
                "WHERE class_id = \"" + class_id + "\"");

        for(int i = 0; i < 42; i++){
            arr[j][i % 7] = set.getString(i+2);

            if(i % 7 == 0 && i != 0)
                j++;
        }

        return arr;
    }


    public static MyClass getGrade(String student_id) throws SQLException {
        //returns the class
        if(classes == null || classes.isEmpty())
            updateClasses();
        String s;
        Statement st = connection.createStatement();



        return null;
    }

    private static void updateUsers() throws SQLException {
        if(connection == null)
            connect();
        updateTeacher();
        updateStudents();
    }

    private static void updateStudents() throws SQLException {
        Statement st = connection.createStatement();
        students = new ArrayList<>();

        try (ResultSet set = st.executeQuery("SELECT * FROM Students")){
            while (set.next()) {
                String s = set.getString("student_id");
                System.out.println(s + " if it works");

                students.add(
                        new Student(s,
                                set.getString("password"),
                                set.getString("name"),
                                set.getString("surname"),
                                set.getString("photo_directory"))
                );
            }
        }
    }

    private static void updateTeacher() throws SQLException {
        Statement st = connection.createStatement();
        teachers = new ArrayList<>();

        try (ResultSet set = st.executeQuery("SELECT * FROM Teachers")) {
            while (set.next()) {
                String s = set.getString("teacher_id");
                teachers.add(
                        new Teacher(s,
                                set.getString("password"),
                                set.getString("name"),
                                set.getString("surname"))
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

    private void changeTimeTable(TimeTable time){

    }
}
