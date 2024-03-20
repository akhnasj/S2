public class CalculateArea() {
    public double area(double radius){
        return Math.PI * radius * radius;
    }

    public static void main(String[] args) {
        CalculateArea calculator = new CalculateArea();
        double area_radius = calculator.area;

        System.Out.println("Area of circle: "+area_radius);
    }
}
