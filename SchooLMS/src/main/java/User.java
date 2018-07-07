public class User{
    private String id;
    private String password;
    private String name;
    private String surname;
    private String class_id;
    private UserType userType;

    public User(String id, String password, String name, String surname,UserType userType) {
        this.id = id;
        this.password = password;
        this.name = name;
        this.surname = surname;
        this.userType = userType;
    }

    public User(String id, String password, String name, String surname, UserType userType, String class_id) {
        this.id = id;
        this.password = password;
        this.name = name;
        this.surname = surname;
        this.class_id = class_id;
        this.userType = userType;
    }

    public boolean login(String id, String password)
    {
        return id.equals(this.id) && password.equals(this.password);
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getSurname() {
        return surname;
    }

    public void setSurname(String surname) {
        this.surname = surname;
    }

    public String getClass_id() {
        return class_id;
    }

    public void setClass_id(String class_id) {
        this.class_id = class_id;
    }

    public UserType getUserType() {
        return userType;
    }

    public void setUserType(UserType userType) {
        this.userType = userType;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        User u = (User) o;
        if (!id.equals(u.id)) return false;
        if (!password.equals(u.password)) return false;
        if (!name.equals(u.name)) return false;
        return surname.equals(u.surname);
    }

    @Override
    public String toString(){
        return id + " "+ password + " " + name + " " + surname;
    }
}
