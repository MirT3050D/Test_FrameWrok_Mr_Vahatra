package test;
import annotation.*;
import scan.*;
@ClasseAnnotation(value = "Test de l'annotation de classe")
public class Test {
    public Test(){}
    @MethodeAnnotation(value = "/test")
    public static void compter()
    {
        System.out.println("Bonjour le monde !");
    }
}
