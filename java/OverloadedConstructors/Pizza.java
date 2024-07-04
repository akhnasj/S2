package OverloadedConstructors;

public class Pizza {

    String bread;
    String sauce;
    String cheese;
    String topping;

    // No pizza
    Pizza(){     
    }

    // Bread
    Pizza(String bread){
        this.bread = bread;
    }

    // Bread, Sauce
    Pizza(String bread, String sauce){
        this.bread = bread;
        this.sauce = sauce;
    }

    // Bread, Sauce, Cheese
    Pizza(String bread, String sauce, String cheese){
        this.bread = bread;
        this.sauce = sauce;
        this.cheese = cheese;
    }

    // Bread, Sauce, Cheese, Topping
    Pizza(String bread, String sauce, String cheese, String topping){
        this.bread = bread;
        this.sauce = sauce;
        this.cheese = cheese;
        this.topping = topping;
    }

}
