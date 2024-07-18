package OverloadedConstructors;

public class Pizza {

    public String bread;
    public String sauce;
    public String cheese;
    public String topping;

    // No pizza
    public Pizza(){     
    }

    // Bread
    public Pizza(String bread){
        this.bread = bread;
    }

    // Bread, Sauce
    public Pizza(String bread, String sauce){
        this.bread = bread;
        this.sauce = sauce;
    }

    // Bread, Sauce, Cheese
    public Pizza(String bread, String sauce, String cheese){
        this.bread = bread;
        this.sauce = sauce;
        this.cheese = cheese;
    }

    // Bread, Sauce, Cheese, Topping
    public Pizza(String bread, String sauce, String cheese, String topping){
        this.bread = bread;
        this.sauce = sauce;
        this.cheese = cheese;
        this.topping = topping;
    }

}
