public class ArrayObjects {

    public static void main(String[] args) {
        
        Food food1 = new Food("pizza");
        Food food2 = new Food("hamburger");
        Food food3 = new Food("hotdog");

        // Food[] refrigerator = new Food[3];
        Food[] refrigerator = {food1, food2, food3};
        // refrigerator[0] = food1;
        // refrigerator[1] = food2;
        // refrigerator[2] = food3;

        System.out.println(refrigerator[0].name);
        System.out.println(refrigerator[1].name);
        System.out.println(refrigerator[2].name);

        
    }

    // Static variables shares data across all instances of a class
    static class Food{
        String name;
        Food(String name){
            this.name = name;
        }
    }


}

