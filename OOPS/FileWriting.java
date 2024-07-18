import java.io.FileWriter;
import java.io.IOException;

public class FileWriting {
    public static void main(String[] args) {
        // Filewriter = used to write or append to a file

        try {
            FileWriter writer = new FileWriter("poem.txt");
            writer.write("Roses are red \nViolets are blue \nBooty booty booty \nRockin' everywhere!");
            writer.append("\n(A poem by Akhna)");
            writer.close();
        } 
        catch (IOException e) {
            e.printStackTrace();
        }

    }
}
