package CO2;

import java.util.Scanner;

// Using Main method
public class Array {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        System.out.println("Enter the size of array: ");
        int size = sc.nextInt();

        int[] array = new int[size];
        System.out.println("Enter "+size+" values: ");
        for (int i = 0; i < size; i++)
            array[i] = sc.nextInt();


        boolean found = false;
        System.out.println("Enter the element to be searched: ");
        int val = sc.nextInt();
        for (int i = 0; i < size; i++){
            if (array[i] == val){
                System.out.println(val+" is found at position "+(i+1));
                found = true;
                break;
            }
        }

        if(!found) {
            System.out.println(val+" is not present in array!");
        }
        
    }
}



// Using Constructors and Methods
public class Array{
    int size;
    int[] array;

    Array(int size){
        this.size = size;
        this.array = new int[this.size];
    }

    void readArray(Scanner sc){
        System.out.println("Enter "+this.size+" values: ");
        for (int i = 0; i < this.size; i++){
            this.array[i] = sc.nextInt();
        }
    }

    void searchArray(Scanner sc) {
        System.out.println("Enter the element to be searched: ");
        int val = sc.nextInt();

        for (int i = 0; i < this.size; i++){
            if (this.array[i] == val) {
                System.out.println(val+" is found at position "+(i+1));
                return;
            }
        }
        System.out.println(val+" is not found in the array!");
    }

    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        System.out.println("Enter the size of the array: ");
        Array array1 = new Array(sc.nextInt());

        array1.readArray(sc);
        array1.searchArray(sc);


    }
}

