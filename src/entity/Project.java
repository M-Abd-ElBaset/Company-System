
package entity;

import company.Tools;
import javax.swing.JTable;

public class Project implements mainData{
    private int projectNo;
    private String projectName;
    private String location;
    private int deptNo;

    public int getProjectNo() {
        return projectNo;
    }

    public void setProjectNo(int projectNo) {
        this.projectNo = projectNo;
    }

    public String getProjectName() {
        return projectName;
    }

    public void setProjectName(String projectName) {
        this.projectName = projectName;
    }

    public String getLocation() {
        return location;
    }

    public void setLocation(String location) {
        this.location = location;
    }

    public int getDeptNo() {
        return deptNo;
    }

    public void setDeptNo(int deptNo) {
        this.deptNo = deptNo;
    }
//    private int projectNo;
//    private String projectName;
//    private String location;
//    private int deptNo;
    @Override
    public void add() {
        String insertStatement = "insert into project values("
                +projectNo+ ","
                + "'" + projectName + "',"
                + "'" + location +"',"
                + deptNo+ ")";
        boolean isAdded = db.Go.runNonQuery(insertStatement);
        if(isAdded){
            Tools.msgBox("Project Is Added");
        }
    }
    
    @Override
    public void update() {
        String updateStatement = "update project set "
                + "ProjectName = '" + projectName + "',"
                + "Location = '" + location +"',"
                + "DeptNo = " + deptNo
                + " where ProjectNo=" +projectNo;
        boolean isUpdated = db.Go.runNonQuery(updateStatement);
        if(isUpdated){
            Tools.msgBox("Project Is Updated");
        }
    }

    @Override
    public void delete() {
        String deleteStatement = "delete from project"
                + " where ProjectNo=" +projectNo;
        boolean isDeleted = db.Go.runNonQuery(deleteStatement);
        if(isDeleted){
            Tools.msgBox("Project Is Deleted");
        }
    }

    @Override
    public String getAutoNumber() { 
        return db.Go.getAutoNumber("project", "ProjectNo");
    }

    @Override
    public void getAllRows(JTable table) {
        db.Go.fillToJTable("project_data", table);
    }

    @Override
    public void getOneRow(JTable table) {
        String selectStatement = "select * from project_data "
                + "where Project_No=" + projectNo;
        db.Go.fillToJTable(selectStatement, table);
    }

    @Override
    public void getCustomRows(String statement, JTable table) {
        db.Go.fillToJTable(statement, table);
    }

    @Override
    public String getValueByName(String name) {
        String selectStatement = "select ProjectNo from project "
                + "where ProjectName=" + "'"+ name+ "'";
        String value = (String) db.Go.getTableData(selectStatement).Items[0][0];
        return value;
    }

    @Override
    public String getNameByValue(String value) {
        String selectStatement = "select ProjectName from project "
                + "where ProjectNo=" + "'"+ value+ "'";
        String name = (String) db.Go.getTableData(selectStatement).Items[0][0];
        return name;
    }
    
    
}
