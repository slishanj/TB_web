/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package search;

import java.sql.ResultSet;
import javax.swing.JOptionPane;
import z.connect.jdbc;

/**
 *
 * @author Administrator
 */
public class searchQuery {

    public ResultSet searchTable(String tableName, String orderBy) throws Exception {
        ResultSet rSearch = null;
        if (rSearch == null) {
            rSearch = jdbc.con().createStatement()
                    .executeQuery("SELECT * FROM " + tableName + " ORDER BY " + orderBy + " ASC");
        } else {
            JOptionPane.showMessageDialog(null, "Please Wait!", "Database Loading...", JOptionPane.WARNING_MESSAGE);
            System.out.println("resultset rSearch is not null yet");
        }

        return rSearch;
    }
}
