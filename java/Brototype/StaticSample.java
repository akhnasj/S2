public class StaticSample {

    static int a = 10;
    public static void main(String[] args) {
        StaticSample h1 = new StaticSample();
        StaticSample h2 = new StaticSample();
        h1.a = 100;
        h2.a = 200;
        System.out.println(a);


    }

    void hello () {
        System.out.println("Hello");
    }
}
