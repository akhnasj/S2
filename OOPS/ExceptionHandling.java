import java.util.InputMismatchException;
import java.util.Scanner;

public class ExceptionHandling {
    public static void main(String[] args) {
        // exception = an event that occurs during the execution of a program that,
        //             disrupts that normal flow of instructions

        Scanner sc = new Scanner(System.in);


        try{
            System.out.println("Enter a whole number to divide: ");
            int x = sc.nextInt();

            System.out.println("Enter a whole numbe to divide by: ");
            int y = sc.nextInt();

            int z = x / y;
            System.out.println("Result: "+z);
        }

        catch (ArithmeticException e){
            System.out.println("You can't divide by zero! IDIOT!!");
        }
        catch (InputMismatchException e){
            System.out.println("Please enter a number OMFG!!");
        }
        catch(Exception e){
            System.out.println("Something went wrong!!!");
        }

        finally {
            //  finally always executes whether try catch performs or not
            sc.close();;
        }
    }
}
