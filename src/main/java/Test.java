package test;
import annotation.*;
import scan.*;
@ClasseAnnotation(value = "Test de l'annotation de classe")
public class Test {
    public Test(){}
    @MethodeAnnotation(value = "/test")
    public static String compter()
    {
        System.out.println("Bonjour le monde !");
        return "tu sais compter";
    }
    @MethodeAnnotation(value = "/hello")
    public static void hello()
    {
        System.out.println("Hello World!");
    }
}
