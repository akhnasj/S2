import java.util.ArrayList;

public class ArrayLists {
    public static void main(String[] args) {
        
        // ArrayList : Resizable array
        //             Elements can be added and removed after compilation phase
        //             store reference data types

        ArrayList<String> food = new ArrayList<String>();
        // Always use wrapper class when using primitive datatypes

        food.add("pizza");
        food.add("hotdog");
        food.add("hamburger");

        // food.set(0,"sushi");        // replacing an element
        // food.remove(2);                     // removing an element
        // food.clear();                             // clear the ArrayList

        
        // for (int i = 0; i < food.size(); i++) {
        //     System.out.println(food.get(i));
        // }

        System.out.println(food);

    }
}
