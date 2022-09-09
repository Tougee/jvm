
import hello.Hello;

public class Main {
    public static void main(String[] args) {
        System.load("/Users/touge/go/src/github.com/tougee/jvm/demos/basic/build/libs/amd64/libgojni.so");
        Hello.test2(new byte[]{-1, 0, 1, 2, 3});
        System.out.println("Hello.getMessage() = " + Hello.getMessage());
    }
}
