import Abstraction.*;

public class Abstraction {
    public static void main(String[] args) {
        // abstract = abstract classes cannot be instantiated, but they can have a subclass
        //            abstract methods are declared without an implementation

        Car car = new Car();
        car.go();
    }
}


// ie, the Vehicle is an abstract idea, it itself cannot create an instance as it is too generic
// thus, forces the user to choose one of its child class as an instance