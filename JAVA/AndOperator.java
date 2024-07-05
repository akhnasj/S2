public class AndOperator {
    public static void main(String[] args) {
        int temp = 15;

        if (temp > 30) {
            System.out.println("It is hot ");
        }

        else if (temp >= 20 && temp <= 30) {
            System.out.println("It is warm");
        }

        else {
            System.out.println("It is cold");
        }
    }
    
}
