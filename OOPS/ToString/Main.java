package ToString;
public class Main {
    public static void main(String[] args) {
        
        // toString() = special method that all objects inherit, 
        //              that returns a string that "textually represents" an object.
        //              can be used both implicitly and explicitly

        Car car = new Car();

        // ----- Shows the address of the object
        // System.out.println(car.toString());

        // ----- As every object inherits the toString() method, when car alone is also called, it implicitly calls the toString() method
        // System.out.println(car);


        // So, we override the toString() method to display the textual representation of data

        System.out.println(car.toString());
        System.out.println(car);
    }
}
