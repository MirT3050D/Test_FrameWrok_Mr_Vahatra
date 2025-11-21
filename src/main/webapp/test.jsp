<<<<<<< Updated upstream
<%@ page import="java.util.Set,java.lang.reflect.Method,annotation.MethodeAnnotation,javax.servlet.http.HttpServletResponse" %>
=======
<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<%@ page import="java.util.List" %>
>>>>>>> Stashed changes
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Test</title>
    <style>body{font-family:Segoe UI,Arial,sans-serif;margin:24px}</style>
</head>
<body>
    <h1>test</h1>

    %
    // possibilité de tester une URL arbitraire via ?check=/path
    String checkParam = request.getParameter("check");
    // récupérer le chemin de la requête (après le contextPath)
    String path = (checkParam != null && !checkParam.isEmpty()) ? checkParam : request.getRequestURI().substring(request.getContextPath().length());
        Object o = application.getAttribute("annotatedClasses");
        boolean found = false;

<<<<<<< Updated upstream
        // DEBUG: afficher le path calculé et info sur les classes annotées
        out.println("<pre>[debug] computed path = '" + path + "'</pre>");
        if (o == null) {
            out.println("<pre>[debug] application attribute 'annotatedClasses' is null</pre>");
        }
=======
        <main>
            <section class="hero" aria-label="Présentation">
                <div>
                    <h1>Bienvenue — une jolie page d'exemple</h1>
                    <p>Voici une page HTML5 simple et élégante, prête à être personnalisée. Utilisez-la comme point de départ pour votre projet.</p>
                    
                    <!-- Données passées depuis le contrôleur -->
                    <div style="margin: 20px 0; padding: 16px; background: rgba(124,58,237,0.1); border-radius: 10px; border-left: 4px solid var(--accent-1)">
                        <h3 style="margin: 0 0 10px 0; font-size: 18px;">Données du ModelView :</h3>
                        
                        <div style="margin-bottom: 15px;">
                            <strong>Liste des étudiants :</strong>
                            <ul style="margin: 5px 0; padding-left: 20px;">
                                <% 
                                    List<String> etudiants = (List<String>) request.getAttribute("etudiants");
                                    if (etudiants != null) {
                                        for (String etudiant : etudiants) {
                                %>
                                    <li><%= etudiant %></li>
                                <% 
                                        }
                                    }
                                %>
                            </ul>
                        </div>
                        
                        <div>
                            <strong>Liste des couleurs :</strong>
                            <ul style="margin: 5px 0; padding-left: 20px;">
                                <% 
                                    List<String> couleurs = (List<String>) request.getAttribute("couleurs");
                                    if (couleurs != null) {
                                        for (String couleur : couleurs) {
                                %>
                                    <li style="font-weight: 600;"><%= couleur %></li>
                                <% 
                                        }
                                    }
                                %>
                            </ul>
                        </div>
                    </div>
                    
                    <div class="cta">
                        <button class="btn">Commencer</button>
                        <button class="btn ghost">Voir le code</button>
                    </div>
                </div>
>>>>>>> Stashed changes

        if (o instanceof Set) {
            @SuppressWarnings("unchecked")
            Set<Class<?>> annotated = (Set<Class<?>>) o;

            out.println("<pre>[debug] annotated classes count = " + annotated.size() + "</pre>");
            for (Class<?> cls : annotated) {
                try {
                    for (Method m : cls.getDeclaredMethods()) {
                        if (m.isAnnotationPresent(MethodeAnnotation.class)) {
                            MethodeAnnotation ma = m.getAnnotation(MethodeAnnotation.class);
                            String url = ma.value();
                            // DEBUG: lister toutes les URLs connues
                            out.println("<pre>[debug] class=" + cls.getName() + " method=" + m.getName() + " url='" + url + "'</pre>");
                            if (url != null && url.equals(path)) {
                                found = true;
                                out.println("<h2>Route trouvée</h2>");
                                out.println("<p>Classe: " + cls.getName() + "</p>");
                                out.println("<p>Méthode: " + m.getName() + "</p>");
                                break;
                            }
                        }
                    }
                } catch (Throwable t) {
                    // ignorer les classes/méthodes problématiques
                }
                if (found) break;
            }
        }

        if (!found) {
            // return a 404 status and a small message
            response.setStatus(HttpServletResponse.SC_NOT_FOUND);
            out.println("<h2>404 - Not found</h2>");
        }
    %>

</body>
</html>