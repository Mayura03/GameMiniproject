import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

public class Gpsjdbc1 {
    static String dbUrl = "jdbc:mysql://localhost:3306/ngpdb";
    static String dbUname = "root";
    static String dbPassword = "";
    static String dbDriver = "com.mysql.cj.jdbc.Driver";

    String name, number, email, password,hname;
    int userinput, rn;

    Gpsjdbc1(String name, String number, String email, String password) {
        this.name = name;
        this.number = number;
        this.email = email;
        this.password = password;
    }

    Gpsjdbc1(String name, String password) {
        this.name = name;
        this.password = password;
    }

    Gpsjdbc1(String hname) {
        this.hname = hname;
    }

    void validate() {
        try {
            Class.forName(dbDriver);
            Connection con = DriverManager.getConnection(dbUrl, dbUname, dbPassword);
            String sql = "insert into sample (name,number,email,password)"
                    + "values('" + name + "','" + number + "','" + email + "','" + password + "')";

            Statement s = con.createStatement();
            s.execute(sql);
            con.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    boolean login() {
        try {
            Class.forName(dbDriver);
            Connection con = DriverManager.getConnection(dbUrl, dbUname, dbPassword);
            String sql = "select * from sample where name='" + name + "' and password='" + password + "'";
            Statement stmt = con.createStatement();
            ResultSet rs = stmt.executeQuery(sql);
            return rs.next();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return false;
    }

    void update(int us) {
        try {
            Class.forName(dbDriver);
            Connection con = DriverManager.getConnection(dbUrl, dbUname, dbPassword);

            String sql = "insert into score (name,count)"
                    + "values('" + hname + "','" + us + "')";

            Statement s = con.createStatement();
            s.execute(sql);
            con.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
