package test;
import annotation.*;
import modelview.ModelView;
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
    @MethodeAnnotation(value = "/page")
    public ModelView page()
    {
        return new ModelView("/test.jsp");
    }
    @MethodeAnnotation(value = "/etudiant/{id}")
    public String etudiant()
    {
        return "étudiant numéro ";
    }
}
