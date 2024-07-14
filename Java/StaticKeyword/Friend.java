package StaticKeyword;

public class Friend {
    
    String name;
    static int noOfFriends;
    // int noOfFriends;
    
    public Friend(String name){
        this.name = name;
        noOfFriends ++;
    }

    public static void displayFriend(){
        System.out.println("You have "+noOfFriends+" friends");
    }
}
