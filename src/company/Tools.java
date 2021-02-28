package company;

import java.awt.AWTException;
import java.awt.Color;
import java.awt.Component;
import java.awt.Container;
import java.awt.Image;
import java.awt.Rectangle;
import java.awt.Robot;
import java.awt.Toolkit;
import java.awt.image.BufferedImage;
import java.awt.print.PrinterException;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.PrintWriter;
import java.nio.Buffer;
import java.text.MessageFormat;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.imageio.ImageIO;
import javax.swing.JFrame;
import javax.swing.JOptionPane;
import javax.swing.JTable;
import javax.swing.JTextField;


public class Tools{

    public static void msgBox(String message){
        JOptionPane.showMessageDialog(null, message);
    }
    
    public static boolean confirmMsg(String message){
        int msgC = JOptionPane.showConfirmDialog(null, message);
        if(msgC == JOptionPane.YES_OPTION){
            return true;
        }
        else{
            return false;
        }
    }
    
    public static void CreateFolder(String folderName, String path){
        File f = new File(path + "/" + folderName);
        f.mkdir();
    }
    
    public static void CreateFolder(String folderName){
        File f = new File(folderName);
        f.mkdir();        
    }
    
    public static void openForm(JFrame form){            
        try {
            form.setLocationRelativeTo(null);
            Image img = ImageIO.read(Tools.class.getResource("emp.png"));
            form.setIconImage(img);
            form.setDefaultCloseOperation(2);
            form.getContentPane().setBackground(Color.white);
            form.setVisible(true);
        } catch (IOException ex) {
            Logger.getLogger(Tools.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    
    public static void clearText(Container form){
        for(Component c : form.getComponents()){
            if(c instanceof JTextField){
                JTextField txt = (JTextField)c;
                txt.setText("");
            }
            else if(c instanceof Container){
                clearText((Container)c);
            }
        }
    }
    
    public static void createEmptyFile(String fileName){
        try {
            File f = new File(fileName + ".txt");
            f.createNewFile();
        } catch (IOException ex) {
            Logger.getLogger(Tools.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    
    public static void createEmptyFiles(String fileNames[]){
        for(String str : fileNames){
            createEmptyFile(str);
        }
    }
    
    public static void createFile(String fileName, Object data[]){
        try {
            PrintWriter p = new PrintWriter(fileName + ".txt");
            for(Object obj : data){
                p.println(obj);
            }
            p.close();
        } catch (FileNotFoundException ex) {
            Logger.getLogger(Tools.class.getName()).log(Level.SEVERE, null, ex);
        }        
    }
    
    public static void createFiles(String fileNames[], Object allData[][]){
        for(int x = 0 ; x < fileNames.length ; x++){
            createFile(fileNames[x], allData[x]);
        }
    }

    public static Object InputBox(String title){
        Object myObj = JOptionPane.showInputDialog(title);
        return myObj;
    }
    
    public static String getNumber(String text){
        String val = "";
        for(char c : text.toCharArray()){
            if(c == '0' || c == '1' || c == '2' || c == '3' || c == '4' || c == '5' || c == '6' || c == '7' || c == '8' || c == '9'){
                val += c;
            }            
        }
        return val;
    }
    
    public static int getNumberToInteger(String text){
        String val = "";
        for(char c : text.toCharArray()){
            if(c == '0' || c == '1' || c == '2' || c == '3' || c == '4' || c == '5' || c == '6' || c == '7' || c == '8' || c == '9'){
                val += c;
            }            
        }
        return Integer.parseInt(val);
    }
    
    
    public static String removeNumber(String text){
        String val = "";
        for(char c : text.toCharArray()){
            if(  !(c == '0' || c == '1' || c == '2' || c == '3' || c == '4' || c == '5' || c == '6' || c == '7' || c == '8' || c == '9')  ){
                val += c;
            }            
        }
        return val;
    }
    
    public static void printScreen(String Imagename){
        try {
            Robot r = new Robot();
            Rectangle rec = new Rectangle( Toolkit.getDefaultToolkit().getScreenSize() );
            BufferedImage img = r.createScreenCapture(rec);
            ImageIO.write(img, "jpg", new File(Imagename + ".jpg"));
        } catch (Exception ex) {
            Logger.getLogger(Tools.class.getName()).log(Level.SEVERE, null, ex);
        }        
    }
    
    public static void printScreen(String Imagename, JFrame form){
        try {
            form.setState(1);
            Robot r = new Robot();
            Rectangle rec = new Rectangle( Toolkit.getDefaultToolkit().getScreenSize() );
            BufferedImage img = r.createScreenCapture(rec);
            ImageIO.write(img, "jpg", new File(Imagename + ".jpg"));
            form.setState(0);
        } catch (Exception ex) {
            Logger.getLogger(Tools.class.getName()).log(Level.SEVERE, null, ex);
        }        
    }
    
    public static void formatTable(JTable table){
        table.getTableHeader().setBackground(new Color(0,0,100));
        table.getTableHeader().setForeground(Color.white);
    }
    
    public static void printReport(JTable table,String title){
        
        try {
            MessageFormat header = new MessageFormat(title + " Report");
            MessageFormat footer = new MessageFormat("Page - {0}");
            table.print(JTable.PrintMode.FIT_WIDTH, header, footer);
        } catch (PrinterException ex) {
            Tools.msgBox(ex.getMessage());
        }
    }

}