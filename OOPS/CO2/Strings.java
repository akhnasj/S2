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



// Using Constructor and methods
public class Strings{
    int size;
    String[] str;
    Scanner sc = new Scanner(System.in);

    Strings(int size){
        this.size = size;
        this.str = new String[size];
        readString(size, str);
    }

    void readString(int size, String[] str){
        System.out.println("Enter "+size+" strings: ");
        for (int i = 0; i < size; i++)
            str[i] = sc.nextLine();
    }

    void sortString(){
        for (int i = 0; i < this.size; i ++){
            for (int j = 0; j < this.size-1; j++){
                if (this.str[j].compareTo(this.str[j+1]) > 0){
                    String temp = this.str[j];
                    this.str[j] = this.str[j+1];
                    this.str[j+1] = temp;
                }
            }
        }
    }

    void displayString() {
        System.out.print("Sorted String: ");
        for (int i = 0; i < this.size; i++){
            System.out.print(this.str[i]+" ");
        }
    }

    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        System.out.println("Enter the no. of strings: ");
        int size = sc.nextInt();
        sc.nextLine();

        Strings s = new Strings(size);
        s.sortString();
        s.displayString();
        sc.close();
    }
}
