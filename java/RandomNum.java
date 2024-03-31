import java.util.Random;

public class RandomNum {
    public static void main (String[] args) {
        Random random = new Random();
        int x = random.nextInt(6) + 1;                   // default range is -2147483648 to 2147483647
        // double x = random.nextDouble();             // default range is 0 to 1 (normally range cannot be specified directly)
        // boolean x = random.nextBoolean();           // returns true or false 

        System.out.println(x);

    }
}
