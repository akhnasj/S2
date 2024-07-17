// Program to create a class for Employee having attributes eNo, eName eSalary. Read n employ information and Search for an employee given eNo, using the concept of Array of Objects.

package CO2;

import java.util.Scanner;

public class Employee {
    int eNo;    
    String eName;
    int eSalary;

    Employee(int eNo, String eName, int eSalary) {
        this.eNo =  eNo;
        this.eName = eName;
        this.eSalary = eSalary;

    }

    // Read an array of Employee objects from the user
    public static Employee[] readEmployeeArray(Scanner sc) {
        System.out.print("Enter the no. of Employees: ");
        int size = sc.nextInt();
        Employee[] array = new Employee[size];

        for (int i = 0; i < size; i++){
            System.out.println("\nEnter the details of Employee "+(i+1)+": ");
            System.out.print("Employee No: ");
            int eNo = sc.nextInt();
            sc.nextLine();
            System.out.print("Employee Name: ");
            String eName = sc.nextLine();
            System.out.print("Employee Salary: ");
            int eSalary = sc.nextInt();

            array[i] = new Employee(eNo, eName, eSalary);
        }
        return array;
    }

    // Search for an employee in an array
    public static String searchArray(int input, Employee[] employees) {              // why public, why not string return type
        for (int i = 0; i < employees.length; i++){             // can we use array.length
            if (employees[i].eNo == input) {
                return employees[i].eName;
            }
        }
        return "Not Found!";

    }

    
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        Employee[] employees = readEmployeeArray(sc);

        System.out.println("\nEnter the employee number to search: ");
        int input = sc.nextInt();
        System.out.println("Employee "+input+" is "+searchArray(input, employees));
        s
    }
        
}



// or
/* 
static int searchEmployee(Employee[] employees, int eNo) {
    for (int i = 0; i < employees.length; i++) {
        if (employees[i].eNo == eNo) {
            return i;
        }
    }
    return -1;
}

public static void main(String[] args) {

    Scanner sc = new Scanner(System.in);
    Employee[] employees = readEmployeeArray(sc);
    System.out.print("Enter the employee number to search: ");
    int eNo = sc.nextInt();
    int index = searchEmployee(employees, eNo);
    if (index == -1) {
        System.out.println("Not Found!");
    } else {
        System.out.println("Employee with employee number " + eNo + " found at index " + index);
    }        

}
*/
