package test;
import annotation.*;
public class Test {
    public Test(){}
    @MethodeAnnotation(value = "/test")
    public static void compter()
    {
        System.out.println("Bonjour le monde !");
    }
}
