package entity;

import company.Tools;
import javax.swing.JTable;

public class Department implements mainData{
    private int deptNo;
    private String deptName;
    private String location;
//Getters & Setters
    public int getDeptNo() {
        return deptNo;
    }

    public void setDeptNo(int deptNo) {
        this.deptNo = deptNo;
    }

    public String getDeptName() {
        return deptName;
    }

    public void setDeptName(String deptName) {
        this.deptName = deptName;
    }

    public String getLocation() {
        return location;
    }

    public void setLocation(String location) {
        this.location = location;
    }

    @Override
    public void add() {
        String insertStatement = "insert into department values("
                +deptNo+ ","
                + "'" + deptName + "',"
                + "'" + location +"')";
        boolean isAdded = db.Go.runNonQuery(insertStatement);
        if(isAdded){
            Tools.msgBox("Department Is Added");
        }
    }
    
    @Override
    public void update() {
        String updateStatement = "update department set "
                + "DeptName = '" + deptName + "',"
                + "Location = '" + location +"'"
                + " where DeptNo=" +deptNo;
        boolean isUpdated = db.Go.runNonQuery(updateStatement);
        if(isUpdated){
            Tools.msgBox("Department Is Updated");
        }
    }

    @Override
    public void delete() {
        String deleteStatement = "delete from department"
                + " where DeptNo=" +deptNo;
        boolean isDeleted = db.Go.runNonQuery(deleteStatement);
        if(isDeleted){
            Tools.msgBox("Department Is Deleted");
        }
    }

    @Override
    public String getAutoNumber() { 
        return db.Go.getAutoNumber("department", "DeptNo");
    }

    @Override
    public void getAllRows(JTable table) {
        db.Go.fillToJTable("department_data", table);
    }

    @Override
    public void getOneRow(JTable table) {
        String selectStatement = "select * from department_data "
                + "where Department_No=" + deptNo;
        db.Go.fillToJTable(selectStatement, table);
    }

    @Override
    public void getCustomRows(String statement, JTable table) {
        db.Go.fillToJTable(statement, table);
    }

    @Override
    public String getValueByName(String name) {
        String selectStatement = "select DeptNo from department "
                + "where DeptName=" + "'"+ name+ "'";
        String value = (String) db.Go.getTableData(selectStatement).Items[0][0];
        return value;
    }

    @Override
    public String getNameByValue(String value) {
        String selectStatement = "select DeptName from department "
                + "where DeptNo=" + "'"+ value+ "'";
        String name = (String) db.Go.getTableData(selectStatement).Items[0][0];
        return name;
    }
    
}
