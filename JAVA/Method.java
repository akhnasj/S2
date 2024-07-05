public class Method {
   
    public static void main(String[] args) {
        // method : a block of code that is executed whenever it is called upon
        
        String name = "Bro";
        int age = 19;
        hello(name,age);
    }
   
    static void hello(String x,int y) {
        System.out.println("Hello "+x);
        System.out.println("You are "+y+" years old");
    }
    
}


