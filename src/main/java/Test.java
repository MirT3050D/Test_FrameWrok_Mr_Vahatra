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
<<<<<<< Updated upstream
=======
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
        // Créer des listes d'étudiants et de couleurs
        java.util.List<String> etudiants = new java.util.ArrayList<>();
        etudiants.add("Jean Dupont");
        etudiants.add("Marie Martin");
        etudiants.add("Pierre Durand");
        etudiants.add("Sophie Lefebvre");
        
        java.util.List<String> couleurs = new java.util.ArrayList<>();
        couleurs.add("bleu");
        couleurs.add("rouge");
        couleurs.add("vert");
        couleurs.add("jaune");
        
        ModelView mv = new ModelView("/test.jsp");
        mv.addData("etudiants", etudiants);
        mv.addData("couleurs", couleurs);
        return mv;
    }
    @MethodeAnnotation(value = "/etudiant/{id}")
    public String etudiant()
    {
        return "étudiant numéro ";
>>>>>>> Stashed changes
    }
}
