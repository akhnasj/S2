package ObjectPassing;

public class Main {
    public static void main(String[] args) {
        
        Garage garage = new Garage();

        Car car1 = new Car("BMW");
        Car car2 = new Car("Benz");

        garage.park(car1);
        garage.park(car2);

    }
}
