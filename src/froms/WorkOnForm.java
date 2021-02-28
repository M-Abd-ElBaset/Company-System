/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package froms;

import company.Tools;
import entity.Employee;
import entity.Project;
import entity.WorkOn;

/**
 *
 * @author Mohamed Abd ElBaset
 */
public class WorkOnForm extends javax.swing.JFrame {

    /**
     * Creates new form WorkOnForm
     */
    public WorkOnForm() {
        initComponents();
    }

    /**
     * This method is called from within the constructor to initialize the form.
     * WARNING: Do NOT modify this code. The content of this method is always
     * regenerated by the Form Editor.
     */
    @SuppressWarnings("unchecked")
    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:initComponents
    private void initComponents() {

        btnGroup = new javax.swing.ButtonGroup();
        jLabel2 = new javax.swing.JLabel();
        btnBack = new controls.JMyButton();
        jLabel3 = new javax.swing.JLabel();
        jLabel5 = new javax.swing.JLabel();
        rdoEmpNo = new javax.swing.JRadioButton();
        rdoEmpName = new javax.swing.JRadioButton();
        rdoProjectNo = new javax.swing.JRadioButton();
        txtSearch = new controls.JTextBox(30);
        btnSearch = new controls.JMyButton();
        cbxProject = new controls.JMyCombo();
        btnAdd = new controls.JMyButton();
        rdoProjectName = new javax.swing.JRadioButton();
        btnDelete = new controls.JMyButton();
        jScrollPane1 = new javax.swing.JScrollPane();
        tblWorkOn = new javax.swing.JTable();
        btnFind = new controls.JMyButton();
        btnAll = new controls.JMyButton();
        jLabel1 = new javax.swing.JLabel();
        cbxEmployee = new controls.JMyCombo();

        setDefaultCloseOperation(javax.swing.WindowConstants.EXIT_ON_CLOSE);
        addWindowListener(new java.awt.event.WindowAdapter() {
            public void windowOpened(java.awt.event.WindowEvent evt) {
                formWindowOpened(evt);
            }
        });

        jLabel2.setFont(new java.awt.Font("Tahoma", 1, 14)); // NOI18N
        jLabel2.setText("Employee  Number:");

        btnBack.setText("Back");
        btnBack.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btnBackActionPerformed(evt);
            }
        });

        jLabel3.setFont(new java.awt.Font("Tahoma", 1, 14)); // NOI18N
        jLabel3.setText("Project Number:");

        jLabel5.setFont(new java.awt.Font("Tahoma", 1, 14)); // NOI18N
        jLabel5.setText("Search By:");

        rdoEmpNo.setBackground(new java.awt.Color(255, 255, 255));
        rdoEmpNo.setSelected(true);
        rdoEmpNo.setText("Employee No");

        rdoEmpName.setBackground(new java.awt.Color(255, 255, 255));
        rdoEmpName.setText("Employee Name");

        rdoProjectNo.setBackground(new java.awt.Color(255, 255, 255));
        rdoProjectNo.setText("Project No");

        txtSearch.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                txtSearchActionPerformed(evt);
            }
        });

        btnSearch.setText("Search");
        btnSearch.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btnSearchActionPerformed(evt);
            }
        });

        btnAdd.setText("Add");
        btnAdd.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btnAddActionPerformed(evt);
            }
        });

        rdoProjectName.setBackground(new java.awt.Color(255, 255, 255));
        rdoProjectName.setText("Project Name");

        btnDelete.setText("Delete");
        btnDelete.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btnDeleteActionPerformed(evt);
            }
        });

        tblWorkOn.setModel(new javax.swing.table.DefaultTableModel(
            new Object [][] {

            },
            new String [] {
                "Employee Number", "Employee Name", "Project No", "Project Name"
            }
        ) {
            boolean[] canEdit = new boolean [] {
                false, false, false, false
            };

            public boolean isCellEditable(int rowIndex, int columnIndex) {
                return canEdit [columnIndex];
            }
        });
        tblWorkOn.addMouseListener(new java.awt.event.MouseAdapter() {
            public void mouseClicked(java.awt.event.MouseEvent evt) {
                tblWorkOnMouseClicked(evt);
            }
        });
        jScrollPane1.setViewportView(tblWorkOn);

        btnFind.setText("Find");
        btnFind.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btnFindActionPerformed(evt);
            }
        });

        btnAll.setText("All");
        btnAll.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btnAllActionPerformed(evt);
            }
        });

        jLabel1.setFont(new java.awt.Font("Tempus Sans ITC", 1, 24)); // NOI18N
        jLabel1.setText("Work-On Form");

        javax.swing.GroupLayout layout = new javax.swing.GroupLayout(getContentPane());
        getContentPane().setLayout(layout);
        layout.setHorizontalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(layout.createSequentialGroup()
                .addContainerGap()
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addComponent(btnBack, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addGroup(layout.createSequentialGroup()
                        .addGap(10, 10, 10)
                        .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                            .addGroup(layout.createSequentialGroup()
                                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                                    .addComponent(jLabel2)
                                    .addComponent(jLabel3))
                                .addGap(18, 18, 18)
                                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING, false)
                                    .addComponent(cbxProject, javax.swing.GroupLayout.DEFAULT_SIZE, 171, Short.MAX_VALUE)
                                    .addComponent(cbxEmployee, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)))
                            .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, layout.createSequentialGroup()
                                .addComponent(btnAdd, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                                .addGap(18, 18, 18)
                                .addComponent(btnDelete, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                                .addGap(29, 29, 29)
                                .addComponent(btnFind, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                                .addGap(28, 28, 28)
                                .addComponent(btnAll, javax.swing.GroupLayout.PREFERRED_SIZE, 51, javax.swing.GroupLayout.PREFERRED_SIZE)))))
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED, 165, Short.MAX_VALUE)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, layout.createSequentialGroup()
                        .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.TRAILING, false)
                            .addGroup(layout.createSequentialGroup()
                                .addGap(2, 2, 2)
                                .addComponent(txtSearch, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                                .addComponent(btnSearch, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                            .addGroup(layout.createSequentialGroup()
                                .addComponent(jLabel5)
                                .addGap(18, 18, 18)
                                .addComponent(rdoEmpNo)
                                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
                                .addComponent(rdoEmpName)
                                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                                .addComponent(rdoProjectNo)
                                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                                .addComponent(rdoProjectName)))
                        .addGap(53, 53, 53))
                    .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, layout.createSequentialGroup()
                        .addComponent(jScrollPane1, javax.swing.GroupLayout.PREFERRED_SIZE, 515, javax.swing.GroupLayout.PREFERRED_SIZE)
                        .addGap(25, 25, 25))))
            .addGroup(layout.createSequentialGroup()
                .addGap(354, 354, 354)
                .addComponent(jLabel1)
                .addContainerGap(javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
        );
        layout.setVerticalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(layout.createSequentialGroup()
                .addContainerGap()
                .addComponent(jLabel1)
                .addGap(1, 1, 1)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addGroup(layout.createSequentialGroup()
                        .addGap(10, 10, 10)
                        .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                            .addComponent(jLabel2)
                            .addComponent(cbxEmployee, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                        .addGap(18, 18, 18)
                        .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                            .addComponent(jLabel3)
                            .addComponent(cbxProject, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED, 119, Short.MAX_VALUE)
                        .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                            .addComponent(btnAdd, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                            .addComponent(btnDelete, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                            .addComponent(btnFind, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                            .addComponent(btnAll, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                        .addGap(74, 74, 74)
                        .addComponent(btnBack, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                        .addGap(20, 20, 20))
                    .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, layout.createSequentialGroup()
                        .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                            .addComponent(jLabel5)
                            .addComponent(rdoEmpNo)
                            .addComponent(rdoEmpName)
                            .addComponent(rdoProjectNo)
                            .addComponent(rdoProjectName))
                        .addGap(13, 13, 13)
                        .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                            .addComponent(txtSearch, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                            .addComponent(btnSearch, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                        .addGap(18, 18, 18)
                        .addComponent(jScrollPane1, javax.swing.GroupLayout.PREFERRED_SIZE, 0, Short.MAX_VALUE)
                        .addContainerGap())))
        );

        pack();
    }// </editor-fold>//GEN-END:initComponents

    private void btnBackActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btnBackActionPerformed
        this.dispose();
        Tools.openForm(new MainForm());
    }//GEN-LAST:event_btnBackActionPerformed

    private void txtSearchActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_txtSearchActionPerformed
        // TODO add your handling code here:
    }//GEN-LAST:event_txtSearchActionPerformed

    private void btnSearchActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btnSearchActionPerformed
        String searchStatement = "select * from workon_data where ";
        if(rdoEmpNo.isSelected()){
            searchStatement += "employee_no";
        }
        else if(rdoEmpName.isSelected()){
            searchStatement += "employee_name";
        }
        else if(rdoProjectNo.isSelected()){
            searchStatement += "project_no";
        }
        else{
            searchStatement += "project_name";
        }
        searchStatement += " like '%"+ txtSearch.getText() +"%'";
        work.getCustomRows(searchStatement, tblWorkOn);
    }//GEN-LAST:event_btnSearchActionPerformed
    Employee employee = new Employee();
    Project project = new Project();
    WorkOn work = new WorkOn();
    private void setValues(){
        String empNameString = cbxEmployee.getSelectedItem().toString();
        String projectNameString = cbxProject.getSelectedItem().toString();
        int empNo = Integer.parseInt(employee.getValueByName(empNameString));
        int projectNo = Integer.parseInt(project.getValueByName(projectNameString));
        
        work.setEmpNo(empNo);
        work.setProjectNo(projectNo);
        
    }
    private void btnAddActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btnAddActionPerformed
        setValues();
        work.add();
        work.getAllRows(tblWorkOn);
    }//GEN-LAST:event_btnAddActionPerformed
    
    private void btnDeleteActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btnDeleteActionPerformed
        if(Tools.confirmMsg("Do you want to delete?")){
            setValues();
            work.delete();
            work.getAllRows(tblWorkOn);
        }
    }//GEN-LAST:event_btnDeleteActionPerformed

    private void tblWorkOnMouseClicked(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_tblWorkOnMouseClicked
        try {
            int row = tblWorkOn.getSelectedRow();

            String empName = tblWorkOn.getValueAt(row, 1).toString();
            String projectName = tblWorkOn.getValueAt(row, 3).toString();
            
            cbxEmployee.setSelectedItem(empName);
            cbxProject.setSelectedItem(projectName);
            
        } catch (Exception ex) {
            Tools.msgBox(ex.getMessage());
        }
    }//GEN-LAST:event_tblWorkOnMouseClicked

    private void btnFindActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btnFindActionPerformed
        String strEmpNo = (String) Tools.InputBox("Enter Employee NO");
        String strProjectNo = (String) Tools.InputBox("Enter Project NO");
        int empNo = Integer.parseInt(strEmpNo);
        int projectNo = Integer.parseInt(strProjectNo);

        work.setEmpNo(empNo);
        work.setProjectNo(projectNo);
        work.getOneRow(tblWorkOn);
    }//GEN-LAST:event_btnFindActionPerformed

    private void btnAllActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btnAllActionPerformed
        work.getAllRows(tblWorkOn);
    }//GEN-LAST:event_btnAllActionPerformed

    private void formWindowOpened(java.awt.event.WindowEvent evt) {//GEN-FIRST:event_formWindowOpened
        btnGroup.add(rdoEmpNo);
        btnGroup.add(rdoEmpName);
        btnGroup.add(rdoProjectNo);
        btnGroup.add(rdoProjectName);
        
        tblWorkOn.getTableHeader().setReorderingAllowed(false);
        
        db.Go.fillCombo("Employee", "EmpName", cbxEmployee);
        db.Go.fillCombo("Project", "ProjectName", cbxProject);
        
        work.getAllRows(tblWorkOn);
    }//GEN-LAST:event_formWindowOpened

    /**
     * @param args the command line arguments
     */
    public static void main(String args[]) {
        /* Set the Nimbus look and feel */
        //<editor-fold defaultstate="collapsed" desc=" Look and feel setting code (optional) ">
        /* If Nimbus (introduced in Java SE 6) is not available, stay with the default look and feel.
         * For details see http://download.oracle.com/javase/tutorial/uiswing/lookandfeel/plaf.html 
         */
        try {
            for (javax.swing.UIManager.LookAndFeelInfo info : javax.swing.UIManager.getInstalledLookAndFeels()) {
                if ("Nimbus".equals(info.getName())) {
                    javax.swing.UIManager.setLookAndFeel(info.getClassName());
                    break;
                }
            }
        } catch (ClassNotFoundException ex) {
            java.util.logging.Logger.getLogger(WorkOnForm.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (InstantiationException ex) {
            java.util.logging.Logger.getLogger(WorkOnForm.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (IllegalAccessException ex) {
            java.util.logging.Logger.getLogger(WorkOnForm.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (javax.swing.UnsupportedLookAndFeelException ex) {
            java.util.logging.Logger.getLogger(WorkOnForm.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        }
        //</editor-fold>

        /* Create and display the form */
        java.awt.EventQueue.invokeLater(new Runnable() {
            public void run() {
                new WorkOnForm().setVisible(true);
            }
        });
    }

    // Variables declaration - do not modify//GEN-BEGIN:variables
    private controls.JMyButton btnAdd;
    private controls.JMyButton btnAll;
    private controls.JMyButton btnBack;
    private controls.JMyButton btnDelete;
    private controls.JMyButton btnFind;
    private javax.swing.ButtonGroup btnGroup;
    private controls.JMyButton btnSearch;
    private controls.JMyCombo cbxEmployee;
    private controls.JMyCombo cbxProject;
    private javax.swing.JLabel jLabel1;
    private javax.swing.JLabel jLabel2;
    private javax.swing.JLabel jLabel3;
    private javax.swing.JLabel jLabel5;
    private javax.swing.JScrollPane jScrollPane1;
    private javax.swing.JRadioButton rdoEmpName;
    private javax.swing.JRadioButton rdoEmpNo;
    private javax.swing.JRadioButton rdoProjectName;
    private javax.swing.JRadioButton rdoProjectNo;
    private javax.swing.JTable tblWorkOn;
    private javax.swing.JTextField txtSearch;
    // End of variables declaration//GEN-END:variables
}