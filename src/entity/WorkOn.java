package entity;

import company.Tools;
import javax.swing.JTable;

public class WorkOn implements mainData{
    private int empNo;
    private int projectNo;

    public int getEmpNo() {
        return empNo;
    }

    public void setEmpNo(int empNo) {
        this.empNo = empNo;
    }

    public int getProjectNo() {
        return projectNo;
    }

    public void setProjectNo(int projectNo) {
        this.projectNo = projectNo;
    }

    @Override
    public void add() {
        String insertStatement = "insert into workon values("
                +empNo+ ","
                + projectNo+ ")";
        boolean isAdded = db.Go.runNonQuery(insertStatement);
        if(isAdded){
            Tools.msgBox("WorkOn Is Added");
        }
    }
    
    @Override
    public void update() {
        
        Tools.msgBox("Update method in WorkOn is not Working!");
        
    }

    @Override
    public void delete() {
        String deleteStatement = "delete from workon"
                + " where"
                + " EmpNo=" + empNo
                + " and "
                + " ProjectNo=" +projectNo;
        boolean isDeleted = db.Go.runNonQuery(deleteStatement);
        if(isDeleted){
            Tools.msgBox("WorkOn Is Deleted");
        }
    }

    @Override
    public String getAutoNumber() { 
        Tools.msgBox("getAutoNumber method in WorkOn is not Working!");
        return "";
    }

    @Override
    public void getAllRows(JTable table) {
        db.Go.fillToJTable("workon_data", table);
    }

    @Override
    public void getOneRow(JTable table) {
        String selectStatement = "select * from workon_data "
                + "where Employee_No=" + empNo
                + " and "
                + "Project_No=" + projectNo;
        db.Go.fillToJTable(selectStatement, table);
    }

    @Override
    public void getCustomRows(String statement, JTable table) {
        db.Go.fillToJTable(statement, table);
    }

    @Override
    public String getValueByName(String name) {
        Tools.msgBox("getValueByName method in WorkOn is not Working!");
        return "";
    }

    @Override
    public String getNameByValue(String value) {
        Tools.msgBox("getNameByValue method in WorkOn is not Working!");
        return "";
    }
    
}
