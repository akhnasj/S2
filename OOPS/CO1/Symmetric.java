// Read a matrix from the console and check whether it is symmetric or not.

import java.util.Scanner;

// Using Main function
public class Symmetric{
    public static void main(String[] args) {

        // Reads the matrix from user
        Scanner sc = new Scanner(System.in);
        System.out.println("Enter the rows and columns: ");
        int rows = sc.nextInt();
        int cols = sc.nextInt();
        int[][] matrix = new int[rows][cols];

        System.out.println("Enter the values: ");
        for (int i = 0; i < rows; i++){
            for (int j = 0; j < cols; j++){
                matrix[i][j] = sc.nextInt();
            }
        }

        // Checks for symmetry
        boolean symmetric = true;
        if (rows != cols){
            symmetric = false;
        } else {
            for(int i = 0; i < rows; i++){
                for(int j = 0; j <cols; j++){
                    if (matrix[i][j] != matrix[j][i]){                       
                        symmetric = false;
                        break ;
                    }
                }
                if(!symmetric){
                    break;
                }
            }
        }

        // Prints the result
        String res = (symmetric) ? "Symmetric" : "not Symmetric";           // Can also use if(symmetric) condition
        System.out.println("Matrix is "+res);
        

    }
}



// Using Constructor and methods
public class Symmetric {
    int rows; 
    int cols;
    int[][] matrix;

    Symmetric(int rows, int cols){
        this.rows = rows;
        this.cols = cols;
        this.matrix = new int[this.rows][this.cols];
        
    }

    void readMatrix(Scanner sc){
        System.out.println("Enter the values: ");
        for(int i = 0; i < this.rows; i++){
            for(int j = 0; j < this.cols; j++){
                this.matrix[i][j] = sc.nextInt();
            }
        }
    }

    void checkSymmetric() {
        if (this.rows != this.cols){
            System.out.println("Matrix is not Symmetric");
        }else{
            for (int i = 0; i < this.rows; i++){
                for (int j = 0; j < this.cols; j++){
                    if (this.matrix[i][j] != this.matrix[j][i]){
                        System.out.println("Matrix is not Symmetric");
                        return;
                    }
                }
            }
            System.out.println("Matrix is Symmetric");
        }
    }
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        System.out.println("Enter the rows and columns of matrix: ");
        int rows = sc.nextInt();
        int cols = sc.nextInt();
        Symmetric m1 = new Symmetric(rows, cols);
        m1.readMatrix(sc);
        m1.checkSymmetric();
    }
}



