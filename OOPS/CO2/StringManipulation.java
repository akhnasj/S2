package CO2;

import java.util.Scanner;

public class StringManipulation {
    public static void main(String[] args) {
         
        // Read a String
        Scanner sc = new Scanner(System.in);
        System.out.print("Enter a string: ");
        String s = sc.nextLine();
        System.out.println("Original String: "+s);

        // toLowerCase, toUpperCase
        String lc_s = s.toLowerCase();
        System.out.println("Lowercase String: "+lc_s);

        String uc_s = s.toUpperCase();
        System.out.println("Uppercase String: "+uc_s);

        // Replace a character in string
        System.out.print("Enter a character to replace, and the character to be replaced with: ");
        String c1 = sc.next();
        String c2 = sc.next();
        String rp_s = s.replace(c1, c2);
        System.out.println("Replaced String: "+rp_s);

        // Find the length of string
        System.out.println("The length of "+s+" is: "+s.length());

        // Find the character at a particular position
        System.out.print("Enter a position: ");
        int pos = sc.nextInt();
        char c_pos = s.charAt(pos);
        System.out.println("The character at index "+pos+" is "+c_pos);

        // Remove white spaces at the ends of a string
        String trim_s = s.trim();
        System.out.println("Trimmed String: "+trim_s);

        // Return the position of first occurence of a character in a string
        System.out.print("Enter a character: ");
        String c = sc.next();
        System.out.println("The first occurence of "+c+" is at position "+s.indexOf(c));

        // Return the position of occurence of a character in a string after the nth position
        System.out.println("Enter a character and a position: ");
        c = sc.next();
        int f_pos = sc.nextInt();
        int n_pos = s.indexOf(c, f_pos);
        System.out.println("The first occurence of "+c+" after position "+f_pos+" is "+n_pos);
        
        // Convert a parameter value to string representation
        int i = 10;
        String i_string = String.valueOf(i);
        System.out.println("String representation of "+i+" is "+i_string);



        // Comparisons

        // Read two strings and check if they are equal
        sc.nextLine();
        System.out.println("Enter string 1: ");
        String s1 = sc.nextLine();
        System.out.println("Enter string 2: ");
        String s2 = sc.nextLine();

        // Equals
        if (s1.equals(s2)) {
            System.out.println("The strings are equal!");
        } else {
            System.out.println("The strings are not equal!");
        }

        // Equals case-insensititve
        if (s1.equalsIgnoreCase(s2)) {
            System.out.println("The strings are equal case-insensitively!");
        } else {
            System.out.println("The strings are not equal case-insensitively!");
        }

        // Compare two strings lexographically
        if(s1.compareTo(s2) < 1) {
            System.out.println(s1+" is less than "+s2);
        } else if (s1.compareTo(s2) > 1) {
            System.out.println(s1+" is greater than "+s2);
        } else {
            System.out.println("The strings are equal");
        }
        
        // Concatenate two strings
        String concat_s = s1.concat(s2);
        System.out.println("The concatenated string: "+concat_s);

        // Return the substring of a string
        System.out.println("Enter a string");
        String s3 = sc.nextLine();
        System.out.println("Enter the start and end positions: ");
        int start = sc.nextInt();
        int end = sc.nextInt();

        System.out.println("s["+start+":] : "+s3.substring(start));
        System.out.println("s[:"+end+"] : "+s3.substring(end));
        System.out.println("s["+start+":"+end+"] : "+s3.substring(start,end));
        sc.close();

    }
}


