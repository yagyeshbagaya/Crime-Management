package connectioncode;
import java.util.*;
import java.sql.*;
public class connectionclass {
      
    public connectionclass(){
    }
   
    public Statement getconnect() {
        Statement st = null;
        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost/crime", "root", "");
            st = con.createStatement();
        } catch (Exception sk) {
            st = null;
        }
        return st;
    }
    public String Execute(String qry) {
        String msg = "";
        try {
            Statement st = this.getconnect();
            if (st.executeUpdate(qry) >= 1) {
                msg = "success";
            } else {
                msg = "Fail to Insert";
            }
        } catch (Exception sk) {
            msg = sk.getMessage().toString();
        }
        return msg;
    }

    public ResultSet record(String qry) {
        ResultSet rs = null;
        try {
            Statement st = this.getconnect();
            rs = st.executeQuery(qry);
        } catch (Exception sk) {}
        return rs;
    }

}
