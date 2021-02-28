package entity;

import company.Tools;
import javax.swing.JTable;

public class EmployeePhones implements mainData{
    private int empNo;
    private String phone;

    public int getEmpNo() {
        return empNo;
    }

    public void setEmpNo(int empNo) {
        this.empNo = empNo;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    @Override
    public void add() {
        String insertStatement = "insert into employee_phones values("
                +empNo+ ","
                + "'" + phone + "')";
        boolean isAdded = db.Go.runNonQuery(insertStatement);
        if(isAdded){
            //Tools.msgBox("Phone Is Added");
        }
    }
    
    @Override
    public void update() {
        Tools.msgBox("Update method in EmployeePhones class is not working!");
    }

    @Override
    public void delete() {
        String deleteStatement = "delete from employee_phones"
                + " where EmpNo=" +empNo
                + " and phone = '" +phone + "'";
        boolean isDeleted = db.Go.runNonQuery(deleteStatement);
        if(isDeleted){
            //Tools.msgBox("Phone Is Deleted");
        } 
    }
    
    public void deleteByEmp(){
        String deleteStatement = "delete from employee_phones"
                + " where EmpNo=" +empNo;
        boolean isDeleted = db.Go.runNonQuery(deleteStatement);
        if(isDeleted){
            //Tools.msgBox("Phones are Deleted");
        } 
    }

    @Override
    public String getAutoNumber() { 
        Tools.msgBox("getAutoNumber method in EmployeePhones class is not working!");
        return "";
    }

    @Override
    public void getAllRows(JTable table) {
        String selectStatement = "select phone from employee_phones "
                + "where EmpNo=" + empNo;
        db.Go.fillToJTable(selectStatement, table);
    }

    @Override
    public void getOneRow(JTable table) {
        Tools.msgBox("getOneRow method in EmployeePhones class is not working!");
    }

    @Override
    public void getCustomRows(String statement, JTable table) {
        Tools.msgBox("getCustomRows method in EmployeePhones class is not working!");
    }

    @Override
    public String getValueByName(String name) {
        Tools.msgBox("getValueByName method in EmployeePhones class is not working!");
        return "";
    }

    @Override
    public String getNameByValue(String value) {
        Tools.msgBox("getNameByValue method in EmployeePhones class is not working!");
        return "";
    }
    
    public String getEmpNoByPhone(String requestPhone){
        String selectStatement = "select empno from employee_phones where phone ='" + requestPhone + "'";
        Object row [][] = db.Go.getTableData(selectStatement).Items;
        String empNoString;
        if(row.length>0){
            empNoString = row[0][0].toString();
        }
        else{
            empNoString = "0";
        }
        
        return empNoString;
        
    }
    
}
