import java.util.Date;

public class Homework {
    private Date date;
    private String subject_id;
    private String homework;

    public Homework(String date, String subject_id, String homework) {
        this.date = new Date(date);
        this.subject_id = subject_id;
        this.homework = homework;
    }

    public Date getDate() {
        return date;
    }

    public void setDate(Date date) {
        this.date = date;
    }

    public String getSubject_id() {
        return subject_id;
    }

    public void setSubject_id(String subject_id) {
        this.subject_id = subject_id;
    }

    public String getHomework() {
        return homework;
    }

    public void setHomework(String homework) {
        this.homework = homework;
    }
}
