public class Arrays {
    public static void main(String[] args) {
        
        // If you assign values rightaway:
        String[] cars = {"Camaro","Corvette","Tesla"};

        // If you dont assign values rightaway:
        /* String[] cars = new String[3];
           cars[0] = "Camaro";
           cars[1] = "Corvette";
           cars[2] = "Tesla";
        */

        for (int i = 0; i < cars.length; i++) {  // car.length = 3
            System.out.println(cars[i]);
        }


    }
}
