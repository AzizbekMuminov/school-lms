import java.io.*;
import java.sql.SQLException;
import java.util.Scanner;

public class Starter {

    public static void main(String args[]) throws IOException {
        try {
            System.out.println(DatabaseManager.login("123AA", "MyName", UserType.STUDENT));
            String arr[][] = DatabaseManager.getTimeTable("9-B");

            for(int i = 0; i < 6; i++){
                System.out.println(i );
                for(int j = 0; j < 7; j++){
                    System.out.println(arr[i][j]);
                }
            }
        } catch (SQLException e) {
            e.printStackTrace();
        };
    }
}
