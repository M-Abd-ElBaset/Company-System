package entity;

import company.Tools;
import javax.swing.JTable;

public class Employee implements mainData{
    private int empNo;
    private String empName;
    private String address;
    private double salary;
    private String hiringDate;
    private String birthDate;
    private int deptNo;

    public int getEmpNo() {
        return empNo;
    }

    public void setEmpNo(int empNo) {
        this.empNo = empNo;
    }

    public String getEmpName() {
        return empName;
    }

    public void setEmpName(String empName) {
        this.empName = empName;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public double getSalary() {
        return salary;
    }

    public void setSalary(double salary) {
        this.salary = salary;
    }

    public String getHiringDate() {
        return hiringDate;
    }

    public void setHiringDate(String hiringDate) {
        this.hiringDate = hiringDate;
    }

    public String getBirthDate() {
        return birthDate;
    }

    public void setBirthDate(String birthDate) {
        this.birthDate = birthDate;
    }

    public int getDeptNo() {
        return deptNo;
    }

    public void setDeptNo(int deptNo) {
        this.deptNo = deptNo;
    }
    
//    private int empNo;
//    private String empName;
//    private String address;
//    private double salary;
//    private String hiringDate;
//    private String birthDate;
//    private int deptNo;

    @Override
    public void add() {
        String insertStatement = "insert into employee values("
                +empNo+ ","
                + "'" + empName + "',"
                + "'" + address + "',"
                + salary + ","
                + "'" + hiringDate + "',"
                + "'" + birthDate + "',"
                +  deptNo +")";
        boolean isAdded = db.Go.runNonQuery(insertStatement);
        if(isAdded){
            Tools.msgBox("Employee Is Added");
        }
    }
    
    @Override
    public void update() {
        String updateStatement = "update employee set "
                + "EmpName = '" + empName + "',"
                + "Address = '" + address + "',"
                + "Salary = " + salary + ","
                + "HiringDate = '" + hiringDate + "',"
                + "BirthDate = '" + birthDate + "',"
                + "DeptNo = " + deptNo
                + " where EmpNo=" +empNo;
        boolean isUpdated = db.Go.runNonQuery(updateStatement);
        if(isUpdated){
            Tools.msgBox("Employee Is Updated");
        }
    }

    @Override
    public void delete() {
        String deleteStatement = "delete from employee"
                + " where EmpNo=" +empNo;
        boolean isDeleted = db.Go.runNonQuery(deleteStatement);
        if(isDeleted){
            Tools.msgBox("Employee Is Deleted");
        }
    }

    @Override
    public String getAutoNumber() { 
        return db.Go.getAutoNumber("employee", "EmpNo");
    }

    @Override
    public void getAllRows(JTable table) {
        db.Go.fillToJTable("employee_data", table);
    }

    @Override
    public void getOneRow(JTable table) {
        String selectStatement = "select * from employee_data "
                + "where NUMBER=" + empNo;
        db.Go.fillToJTable(selectStatement, table);
    }

    @Override
    public void getCustomRows(String statement, JTable table) {
        db.Go.fillToJTable(statement, table);
    }

    @Override
    public String getValueByName(String name) {
        String selectStatement = "select EmpNo from employee "
                + "where EmpName=" + "'"+ name+ "'";
        String value = (String) db.Go.getTableData(selectStatement).Items[0][0];
        return value;
    }

    @Override
    public String getNameByValue(String value) {
        String selectStatement = "select EmpName from employee "
                + "where EmpNo=" + "'"+ value+ "'";
        String name = (String) db.Go.getTableData(selectStatement).Items[0][0];
        return name;
    }
    
    
}
