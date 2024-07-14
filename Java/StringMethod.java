public class StringMethod {
    public static void main(String[] args) {
        
        String name = "Bro";

        // boolean result = name.equals("Bro");
        // boolean result = name.equals("bro");
        // boolean result = name.equalsIgnoreCase("Bro");
        // int result = name.length();
        // char result = name.charAt(0);
        // int  result = name.indexOf("r");

        // String name = "";
        // boolean result = name.isEmpty();

        // String result = name.toUpperCase();
        // String result = name.toLowerCase();

        // String name = "    Bro   "
        // String result = name.trim();

        String result = name.replace('o','u');
        System.out.println(result);
    }
}
