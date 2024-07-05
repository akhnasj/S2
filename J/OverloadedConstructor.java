

import OverloadedConstructors.Pizza;

public class OverloadedConstructor {
    public static void main(String[] args) {

        // Bread, sauce, cheese, topping
        Pizza p1 = new Pizza("thicc crust","tomato", "mozzarella","pepperoni");
       
        System.out.println("Here are the ingredients of the pizza: ");
        System.out.println(p1.bread);
        System.out.println(p1.sauce);
        System.out.println(p1.cheese);
        System.out.println(p1.topping);


        // Bread, sauce, cheese 
        Pizza p2 = new Pizza("thicc crust","tomato", "mozzarella");

        System.out.println("\nHere are the ingredients of the pizza: ");
        System.out.println(p2.bread);
        System.out.println(p2.sauce);
        System.out.println(p2.cheese);


        // Bread, sauce
        Pizza p3 = new Pizza("thicc crust","tomato");

        System.out.println("\nHere are the ingredients of the pizza: ");
        System.out.println(p3.bread);
        System.out.println(p3.sauce);
        

        // Bread
        Pizza p4 = new Pizza("thicc crust");

        System.out.println("\nHere are the ingredients of the pizza: ");
        System.out.println(p4.bread);


        // No pizza
        Pizza p5 = new Pizza();

        System.out.println("\nHere are the ingredients of the pizza: ");
        System.out.println(p5.bread);
        System.out.println(p5.sauce);
        System.out.println(p5.cheese);
        System.out.println(p5.topping);


    }
}
