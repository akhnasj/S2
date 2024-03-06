public class Search {
    public static void main(String[] args) {
        int[] array = {1,2,3,4,5};
        int flag = 0;
        for (int i = 0; i < 5; i++) {
            if (array[i] == 4) {
                flag = 1;
                System.out.printf("Element found at position %d", i+1); 
            }
        
        }
        if (flag != 1)
            System.out.print("Element not found!");
        
    }
}