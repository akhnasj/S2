public class Swap2Var {
    public static void main(String[] args) {
        String x = "water";
        String y = "Kool-Aid";
        String temp;             // String temp = null;


        temp = x;
        x = y;
        y = temp;

        System.out.println("x: "+x);
        System.out.println("y: "+y);
    }
}
