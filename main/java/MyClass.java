public class MyClass {
    private String class_id;
    private String[][] timeTable;
    private String teacher_id;

    public MyClass(String class_id, String[][] timeTable, String teacher_id) {
        this.class_id = class_id;
        this.timeTable = timeTable;
        this.teacher_id = teacher_id;
    }

    public String getTeacher_id() {
        return teacher_id;
    }

    public void setTeacher_id(String teacher_id) {
        this.teacher_id = teacher_id;
    }

    public String getClass_id() {
        return class_id;
    }

    public void setClass_id(String class_id) {
        this.class_id = class_id;
    }

    public String[][] getTimeTable() {
        return timeTable;
    }

    public void setTimeTable(String[][] timeTable) {
        this.timeTable = timeTable;
    }
}
