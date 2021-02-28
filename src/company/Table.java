package company;

public class Table{
    
    public int columns;
    public Object[][] Items;
    
    public Table(int columns){
        this.columns = columns;
        Items = new Object[0][columns];
    }
    
    public void addNewRow(Object row[]){
        //الاحتفاظ بالعناصر القديمة داخل متغير مؤقت
        Object TempItems[][] = Items;
        //زيادة المتغير الاساسي بعنصر اضافي
        Items = new Object[Items.length + 1][columns];
        //تعبئة العناصر القديمة في العنصر الاساسي
        for(int x = 0; x < TempItems.length ; x++){
            Items[x] = TempItems[x];
        }
        //اضافة الصف الجديد للعنصر الاساسي
        Items[Items.length - 1] = row;
    }
    
    public void printItems(){
        for(Object objs[] : Items){
            for(Object obj : objs){
                System.out.print(obj + " ; ");
            }
            System.out.println();
        }
    }
    
    public void editRow(int rowIndex, int columnIndex, Object newData){
        Items[rowIndex][columnIndex] = newData;
    }
    
    public void deleteRow(int rowIndex){
        Object TempItems[][] = Items;
        Items = new Object[Items.length - 1][columns];
        int y = 0;
        for(int x = 0 ; x < TempItems.length ; x++){            
            if(x != rowIndex){
                Items[y] = TempItems[x];
                y++;
            }
        }
    }
    
    public Object getValue(int rowIndex, int columnIndex){
        return Items[rowIndex][columnIndex];
    }

    public Object[] getRow(int rowIndex){
        return Items[rowIndex];
    }
    
}