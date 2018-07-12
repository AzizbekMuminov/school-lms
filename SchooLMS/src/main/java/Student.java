public class Student extends User{

    private String class_id;
    private String photo_directory;

    public Student(String id, String password, String name, String surname, String photo_directory, String class_id) {
        super(id, password, name, surname, UserType.STUDENT);
        this.class_id = class_id;
        this.photo_directory = photo_directory;
        this.class_id = class_id;
    }


    public String getClass_id() {
        return class_id;
    }

    public void setClass_id(String class_id) {
        this.class_id = class_id;
    }

    public String getPhoto_directory() {
        return photo_directory;
    }

    public void setPhoto_directory(String photo_directory) {
        this.photo_directory = photo_directory;
    }
}
