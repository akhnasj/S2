import java.util.ArrayList;

public class ArrayLists2D {
    public static void main(String[] args) {
        
        // 2D ArrayList : a dynamic list of lists
        // You can change the size of these lists during runtime

        ArrayList<ArrayList<String>> groceryList = new ArrayList<ArrayList<String>>();


        ArrayList<String> bakeryList = new ArrayList<String>();
        bakeryList.add("pizza");
        bakeryList.add("donuts");
        bakeryList.add("garlic bread");
        

        ArrayList<String> produceList = new ArrayList<String>();
        produceList.add("tomatoes");
        produceList.add("zucchini");
        produceList.add("peppers");

        ArrayList<String> drinksList = new ArrayList<String>();
        drinksList.add("soda");
        drinksList.add("coffee");

        groceryList.add(bakeryList);
        groceryList.add(produceList);
        groceryList.add(drinksList);

        // System.out.println(bakeryList);
        // System.out.println(bakeryList.get(0));
        // System.out.println(drinksList);
        System.out.println(groceryList);
        System.out.println(groceryList.get(0));                   // returns first list
        System.out.println(groceryList.get(0).get(0));      // returns first element of the first list
        
    }
}
