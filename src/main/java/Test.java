package test;
import java.util.Map;
import annotation.*;
import modelview.ModelView;
import scan.*;
@ClasseAnnotation(value = "Test de l'annotation de classe")
public class Test {
        @MethodeAnnotation("/etudiant/create")
        @PostMapping
        public boolean createEtudiant(Map<String, Object> data) {
            String nom = (String) data.get("nom");
            String prenom = (String) data.get("prenom");
            int age = 0;
            try {
                age = Integer.parseInt((String) data.get("age"));
            } catch (Exception e) {}
            String email = (String) data.get("email");
            Etudiant etu = new Etudiant(nom, prenom, age, email);
            return true;
        }
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
    public String etudiantParId(int id)
    {
        return "Étudiant avec ID dynamique: " + id;
    }
    @MethodeAnnotation(value = "/etudiant/numero")
    public String etudiantParNumero(int id)
    {
        return "Étudiant numéro (formulaire): " + id;
    }
    @MethodeAnnotation(value = "/etudiant/numero")
    public String etudiantNom(@RequestParam("nom") String nom)
    {
        return "étudiant numéro " + nom;
    }

    // --- DEMANDE: Trois méthodes, même URL, différentes annotations ---
    @MethodeAnnotation("/demo/multi")
    @GetMapping
    public String demoMultiGet() {
        return "GET: Vous avez appelé la méthode annotée avec @GetMapping !";
    }

    @MethodeAnnotation("/demo/multi")
    @PostMapping
    public String demoMultiPost() {
        return "POST: Vous avez appelé la méthode annotée avec @PostMapping !";
    }

    @MethodeAnnotation("/demo/multi")
    public String demoMultiAll() {
        return "ALL: Vous avez appelé la méthode annotée avec @MethodeAnnotation (tous types de requêtes) !";
    }
}
