import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;

public class Homework {
    private Calendar date;
    private String subject_id;
    private String homework;
    private String class_id;

    public Homework(String date, String subject_id, String homework, String class_id) {
        SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd");
        this.date = Calendar.getInstance();

        try {
            this.date.setTime(formatter.parse(date));
        } catch (ParseException e) {
            e.printStackTrace();
        }
        this.subject_id = subject_id;
        this.homework = homework;
        this.class_id = class_id;
    }

    public String getClass_id() {return class_id; }

    public void setClass_id(String class_id) {this.class_id = class_id; }

    public Calendar getDate() {
        return date;
    }

    public String getFromatedDate() {
        SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd");
        return formatter.format(date);
    }

    public boolean isThatDate(Calendar c){
        if(date.get(Calendar.YEAR) != c.get(Calendar.YEAR))
            return false;
        if(date.get(Calendar.MONTH) != c.get(Calendar.MONTH))
            return false;
        return (date.get(Calendar.DAY_OF_MONTH) == c.get(Calendar.DAY_OF_MONTH));
    }

    public void setDate(Calendar date) {
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


    @Override
    public String toString() {
        return homework;
    }
}
