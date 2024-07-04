package Constructor;

public class Main {
    public static void main(String[] args) {
        
        Human human1 = new Human("Rick",67,70.5);
        Human human2 = new Human("Morty",16,50);

        human2.eat();
        human1.drink();
    }
}
