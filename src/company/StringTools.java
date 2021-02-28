package company;
public class StringTools{

    String text;
    private String inverseText;
    String texts[];
    String textArray;
    
    public StringTools(String text){
        this.text = text;
    }
    
    public StringTools(String texts[]){
        this.texts = texts;
        textArray = "";
    }
    
    public void printCharByChar(){
        for(char c : text.toCharArray()){
            System.out.println(c);
        }
    }
    
    public void printCharByCharInverse(){
        StringBuilder sb = new StringBuilder(text);
        inverseText = sb.reverse().toString();
        for(char c : inverseText.toCharArray()){
            System.out.println(c);
        }
    }
    
    public void printStringArray(){
        for(String s : texts){
            System.out.println(s);
        }
    }
    
    public String getStringArrayElement(){
        for(String s : texts){
            textArray += s + " ; ";
        }
        return textArray;
    }
    
}