package db;

// @author Mohamed Abd ElBaset
import company.Table;
import company.Tools;
import java.sql.*;
import java.util.Vector;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.swing.DefaultComboBoxModel;
import javax.swing.JComboBox;
import javax.swing.JTable;
import javax.swing.table.DefaultTableModel;
public class Go {
    private static String url = "";
    public static String dbName = "company";
    public static String port = "3306";
    public static String user = "root";
    public static String password = "";
    private static Connection connection;
    private static void setUrl(String databaseName, String portNum){
        url = "jdbc:mysql://localhost:" + portNum + "/"+databaseName
                +"?useUnicode&characterEncoding=UTF-8";
    }
    
    private static void setConnection(String databaseName, String portNum){
        
        try {
            setUrl(databaseName, portNum);
            connection = DriverManager.getConnection(url,user,password);
        } catch (SQLException ex) {
            Tools.msgBox(ex.getMessage());
        }
    }
    
    public static boolean checkUserAndPass(String username,String pass){
        try {
            setConnection(dbName, port);
            Statement statement = connection.createStatement();
            String strCheck = "select * from users where " +
                    "username='"+username +"' and "
                    +"pass='"+pass + "'";
            statement.executeQuery(strCheck);
            while (statement.getResultSet().next()) {
                connection.close();
                return true;
            }
            connection.close();
        } catch (SQLException ex) {
            Tools.msgBox(ex.getMessage());
        }
        return false;
    }
    
    public static boolean runNonQuery(String nonQueryStatement){
        try {
            setConnection(dbName, port);
            Statement statement = connection.createStatement();
            statement.executeUpdate(nonQueryStatement);
            connection.close();
            return true;
        } catch (SQLException ex) {
            Tools.msgBox(ex.getMessage());
            return false;
        }
    }
    
    public static String getAutoNumber(String tableName, String columnName){
        try {
            setConnection(dbName, port);
            Statement statement = connection.createStatement();
            String strAuto = "select max(" + columnName + ")+1 as autonum"
                    + " from " +tableName;
            statement.executeQuery(strAuto);
            String num = "";
            while (statement.getResultSet().next()) {                
                num = statement.getResultSet().getString("autonum");
            }
            connection.close();
            if(num == null || "".equals(num)){
                return "1";
            }
            else{
                return num;
            }
        } catch (SQLException ex) {
            Tools.msgBox(ex.getMessage());
            return "0";
        }
    }
    
    public static Table getTableData(String dataStatement){
        try {
            setConnection(dbName, port);
            Statement statement = connection.createStatement();
            ResultSet resultSet = statement.executeQuery(dataStatement);
            ResultSetMetaData metaData = resultSet.getMetaData();
            int columns = metaData.getColumnCount();
            Table table = new Table(columns);
            while (resultSet.next()) {
                Object row[] = new Object[columns];
                for(int i=0;i<columns;i++){
                    row[i] = resultSet.getString(i+1);
                }
                table.addNewRow(row);
            }
            connection.close();
            return table;
        } catch (SQLException ex) {
            Tools.msgBox(ex.getMessage());
            return new Table(0);
        }
        
    }
    
    public static void fillCombo(String tableName, String columnName, JComboBox combo){
        try {
            setConnection(dbName, port);
            Statement statement = connection.createStatement();
            String selectStatement = "select " + columnName + " from " +tableName;
            ResultSet resultSet = statement.executeQuery(selectStatement);
            //get number of rows
            resultSet.last(); //go to last row
            int rows = resultSet.getRow(); //get number of current row
            
            //return to before first
            resultSet.beforeFirst();
            String values[] = new String[rows];
            int i=0;
            while (resultSet.next()) {                
                values[i] = resultSet.getString(1); //1: first column
                i++;
            }
            connection.close();
            
            combo.setModel(new DefaultComboBoxModel(values));
        } catch (SQLException ex) {
            Tools.msgBox(ex.getMessage());
        }
    }
    
    public static void fillToJTable(String tableNameOrSelectStatement, JTable table){
        try {
            setConnection(dbName, port);
            Statement statement = connection.createStatement();
            
            String sPart = tableNameOrSelectStatement.substring(0, 7).toLowerCase();
            String selectStatement;
            if("select ".equals(sPart)){
                selectStatement = tableNameOrSelectStatement;
            }
            else{
                selectStatement = "select * from " +tableNameOrSelectStatement;
            }
            ResultSet resultSet = statement.executeQuery(selectStatement);
            ResultSetMetaData metaData = resultSet.getMetaData();
            int columns = metaData.getColumnCount();
            DefaultTableModel model = (DefaultTableModel) table.getModel();
            
            Vector row;
            model.setRowCount(0);
            
            while (resultSet.next()) {                
                row = new Vector(columns);
                for(int i=1;i<=columns;i++){
                    row.add(resultSet.getString(i));
                }
                model.addRow(row);
            }
            if(table.getColumnCount()!=columns){
                Tools.msgBox("JTable columns count Not Equal to Query columns count\n"
                        + "JTable Columns count is: "+ table.getColumnCount()
                        +"\nQuery Columns count is: " + columns);
            }
            connection.close();
        } catch (SQLException ex) {
            Tools.msgBox(ex.getMessage());
        }
    }
}

