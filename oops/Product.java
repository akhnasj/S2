public class Product {
    int pcode;
    String pname;
    double price;
    

    public static void main(String[] args){
        Product p1 = new Product();
        Product p2 = new Product();
        Product p3 = new Product();

        System.out.println("The lowest price : ");
        if (p1.price < p2.price && p1.price < p3.price){
            System.out.println(p1.price);
        } else if (p2.price < p1.price && p2.price < p3.price) {
            System.out.println(p2.price);
        } else {
            System.out.println(p3.price);
        }
    }
}

    

