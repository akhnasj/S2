import java.util.Scanner;

public class Matrix {
    int rows;
    int cols;
    int[][] matrix;


    public void readMatrix(Scanner sc) {
        System.out.println("\nEnter the rows and columns: ");
        this.rows = sc.nextInt();
        this.cols = sc.nextInt();
        this.matrix = new int[this.rows][this.cols];

        System.out.println("Enter the values: ");
        for (int i = 0; i < this.rows; i++){
            for (int j = 0; j < this.cols; j++){
                this.matrix[i][j] = sc.nextInt();
            }
        }
    }


    public void sumMatrix(Matrix matrix1, Matrix matrix2){
        if (matrix1.rows != matrix2.rows || matrix1.cols != matrix2.cols){
            System.out.println("Matrices cannot be added!");
            return;
        }

        this.rows = matrix1.rows;
        this.cols = matrix1.cols;
        this.matrix = new int[this.rows][this.cols];
        for (int i = 0; i < rows; i++){
            for (int j = 0; j < cols; j++){
                this.matrix[i][j] = matrix1.matrix[i][j] + matrix2.matrix[i][j];
            }
        }
    }


    public void displayMatrix() {
        System.out.println("\nSum of matrices: ");
        for (int i = 0; i < rows; i++){     
            for (int j = 0; j < cols; j++){
                System.out.print(this.matrix[i][j]+" ");
            }
            System.out.println();
        }
    }

    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);

        Matrix matrix1 = new Matrix();
        matrix1.readMatrix(sc);

        Matrix matrix2 = new Matrix();
        matrix2.readMatrix(sc);

        Matrix matrix3 = new Matrix();
        matrix3.sumMatrix(matrix1, matrix2);

        matrix3.displayMatrix();
        
        
    }
}




// Overloaded Constructors

public class Matrix {
    int rows;
    int cols;
    int[][] matrix;


    public Matrix(Scanner sc){
        System.out.println("\nEnter the no. of rows and columns: ");
        this.rows = sc.nextInt();
        this.cols = sc.nextInt();
        this.matrix = new int[this.rows][this.cols];

        System.out.println("Enter the values: ");
        for (int i = 0; i < this.rows; i++ ){
            for (int j = 0; j < this.cols; j++){
                this.matrix[i][j] = sc.nextInt();
            }
        }
    }


    public Matrix(Matrix matrix1, Matrix matrix2){
        if (matrix1.rows != matrix2.rows || matrix1.cols != matrix2.cols){
            System.out.println("Matrices cannot be added!");
            return;
        }
        this.rows = matrix1.rows;
        this.cols = matrix1.cols;
        this.matrix = new int[this.rows][this.cols];
        for (int i = 0; i < rows; i++){
            for (int j = 0; j < cols; j++){
                this.matrix[i][j] = matrix1.matrix[i][j] + matrix2.matrix[i][j];
            }
        }
        display();
    }


    public void display() {
        System.out.println("\nSum of matrices are: ");
        for(int i = 0; i < this.rows; i++){
            for(int j = 0; j < this.cols; j++){
                System.out.print(this.matrix[i][j]+" ");
            }
            System.out.println();
        }
    }
    


    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);

        Matrix matrix1 = new Matrix(sc);
        Matrix matrix2 = new Matrix(sc);

        new Matrix(matrix1, matrix2);          // Matrix matrix3 = new Mat(matrix1, matrix2)


        
    }
}

