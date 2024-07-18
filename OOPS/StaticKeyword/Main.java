package StaticKeyword;
public class Main {
    public static void main(String[] args) {
        
        // static : modifier. A single copy of a variable/method is created and shared.
        //          The class "owns" the static member

        Friend f1 = new Friend("Spongebob");
        Friend f2 = new Friend("Patrick");
        Friend f3 = new Friend("Squidward");
        // Here both f1, f2, f3 share the same memory location



        //--- Can write ClassName.variable  (not Object.variable)
        //--- Access thorugh class that "owns" the static member
        //--- Accessing the static member(variable) using the object name is not recommended (f1.noOfFriends)
        // System.out.println(Friend.noOfFriends);

        //--- Now, when static field is removed, and its int noOfFriends, every objects have their own copy of noOfFriends
        // System.out.println(f1.noOfFriends);

        Friend.displayFriend();
        // Math.round(a);
    }
}
