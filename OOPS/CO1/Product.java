import java.util.Scanner;

public class Product {
    int pcode;
    String pname;
    double price;

    Product(double price){
        this.price = price;
    }

    public static String lowPrice(double price1, double price2, double price3) {
        if ( price1 < price2 && price1 < price3){
            return "Product 1 is lowest";
        } else if (price2 < price1 && price2 < price3) {
            return "Product 2 is lowest";
        } else {
            return "Product 3 is lowest";
        }
    }
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        System.out.println("Enter the price of product 1: ");     
        Product p1 = new Product(sc.nextDouble());
        System.out.println("Enter the price of product 2: ");     
        Product p2 = new Product(sc.nextDouble());
        System.out.println("Enter the price of product 3: ");     
        Product p3 = new Product(sc.nextDouble());
        sc.close();

        System.out.println(lowPrice(p1.price, p2.price, p3.price));

    }
}
