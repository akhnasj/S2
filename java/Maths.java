
public class Maths {
    public static void main(String[] args) {
        
        double x = 3.14;
        double y = -10;

        double a = Math.max(x,y);       // finds the max value
        double b = Math.min(x,y);       // finds the min value

        double c = Math.abs(y);         // returns absolute value
        double d = Math.sqrt(x);        // returns square root

        double e = Math.round(x);       // rounds off the value
        double f = Math.ceil(x);        // rounds up
        double g = Math.floor(x);       // rounds down

        System.out.println(a);
        System.out.println(b);
        System.out.println(c);
        System.out.println(d);
        System.out.println(e);
        System.out.println(f);
        System.out.println(g);

    }
}
