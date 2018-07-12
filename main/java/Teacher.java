import java.util.HashMap;

public class Teacher extends User{

    private HashMap<String, String> subjects;

    public HashMap<String, String> getSubjects() {
        return subjects;
    }

    public void setSubjects(HashMap<String, String> subjects) {
        this.subjects = subjects;
    }

    public Teacher(String id, String password, String name, String surname) {
        super(id, password, name, surname, UserType.STUDENT);
        subjects = new HashMap<>();
    }

    public void addSubject(String subject_id, String class_id){
        subjects.put(subject_id, class_id);
    }

}
