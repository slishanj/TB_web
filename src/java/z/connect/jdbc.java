/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package z.connect;

import com.mysql.jdbc.Connection;
import java.sql.DriverManager;


/**
 *
 * @author Administrator
 */
public class jdbc {
    static String url = "jdbc:mysql://localhost:3306/tb_phi";

    public static Connection con() throws Exception {
        Class.forName("com.mysql.jdbc.Driver");
        Connection conc = (Connection) DriverManager.getConnection(url, "root", "SLISHAN");
        return conc;
    }
}
