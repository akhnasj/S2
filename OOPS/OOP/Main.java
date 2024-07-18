package OOP;
public class Main {
    public static void main(String[] args) {
        
        // object = an instance of a class that may contain attributes and methods

        Car car1 = new Car();
        Car car2 = new Car();

        System.out.println(car1.make);
        System.out.println(car2.model);

        car1.drive();
        car2.brake();


    }
}
