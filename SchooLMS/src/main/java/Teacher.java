import java.util.ArrayList;

public class Teacher extends User{

    private ArrayList<String> subject_id;
    private String class_id;

    public ArrayList<String> getSubject_id() {
        return subject_id;
    }

    public Teacher(String id, String password, String name, String surname) {
        super(id, password, name, surname, UserType.STUDENT);
    }

    public void setSubject_id(ArrayList<String> subject_id) {
        this.subject_id = subject_id;
    }

    public String getClass_id() {
        return class_id;
    }

    public void setClass_id(String class_id) {
        this.class_id = class_id;
    }


}
