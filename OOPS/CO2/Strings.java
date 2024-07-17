package CO2;

import java.util.Scanner;

// Using Main Method
public class Strings{
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        System.out.print("Enter the no. of strings: ");
        int size = sc.nextInt();
        sc.nextLine();
        String [] str = new String[size];

        System.out.println("Enter "+size+" strings: ");
        for (int i = 0; i < size; i++){
            str[i] = sc.nextLine();
        }

        for (int i = 0; i < size; i ++){
            for (int j = 0; j < size-1; j++){
                if (str[j].compareTo(str[j+1]) > 0){
                    String temp = str[j];
                    str[j] = str[j+1];
                    str[j+1] = temp;
                }
            }
        }
        
        System.out.print("Sorted String: ");
        for (int i = 0; i < size; i++){
            System.out.print(str[i]+" ");
        }

    }
}


// Using Constructors

