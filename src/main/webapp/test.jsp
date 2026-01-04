<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width,initial-scale=1" />
    <title>Page jolie - Test</title>

    <!-- Optionnel : police Google (peut être retirée si pas souhaitée) -->
    <link href="https://fonts.googleapis.com/css2?family=Inter:wght@300;400;600;800&display=swap" rel="stylesheet">

    <style>
        :root{
            --bg:#0f1724;
            --card:#0b1220;
            --accent-1:#7c3aed;
            --accent-2:#06b6d4;
            --muted:rgba(255,255,255,0.75);
            --glass: rgba(255,255,255,0.04);
            --radius:14px;
        }

        *{box-sizing:border-box}
        html,body{height:100%}
        body{
            margin:0;
            font-family: "Inter", system-ui, -apple-system, "Segoe UI", Roboto, "Helvetica Neue", Arial;
            background: radial-gradient(1200px 600px at 10% 10%, rgba(124,58,237,0.12), transparent),
                                    radial-gradient(1000px 500px at 90% 90%, rgba(6,182,212,0.08), transparent),
                                    var(--bg);
            color:#e6eef8;
            -webkit-font-smoothing:antialiased;
            -moz-osx-font-smoothing:grayscale;
            padding:32px;
        }

        .container{
            max-width:1100px;
            margin:0 auto;
        }

        header{
            display:flex;
            align-items:center;
            justify-content:space-between;
            gap:20px;
            margin-bottom:28px;
        }

        .brand{
            display:flex;
            align-items:center;
            gap:12px;
        }

        .logo{
            width:48px;
            height:48px;
            border-radius:12px;
            background:linear-gradient(135deg,var(--accent-1),var(--accent-2));
            box-shadow:0 6px 20px rgba(7,12,23,0.6), inset 0 -6px 18px rgba(255,255,255,0.06);
            display:flex;
            align-items:center;
            justify-content:center;
            font-weight:800;
            color:white;
            font-size:18px;
            letter-spacing:0.5px;
        }

        nav a{
            color:var(--muted);
            text-decoration:none;
            margin-left:18px;
            font-weight:600;
            transition:color .18s ease, transform .18s ease;
        }
        nav a:hover{ color:white; transform:translateY(-2px) }

        .hero{
            background: linear-gradient(180deg, rgba(255,255,255,0.03), transparent);
            border-radius: var(--radius);
            padding:32px;
            display:grid;
            grid-template-columns: 1fr 360px;
            gap:24px;
            align-items:center;
            box-shadow: 0 8px 40px rgba(2,6,23,0.6);
            margin-bottom:28px;
        }

        .hero h1{
            margin:0 0 8px 0;
            font-size:34px;
            line-height:1.03;
            letter-spacing:-0.4px;
        }

        .hero p{ margin:0 0 18px 0; color:var(--muted); }

        .cta{
            display:flex;
            gap:12px;
            align-items:center;
        }
        .btn{
            padding:10px 16px;
            border-radius:10px;
            font-weight:700;
            cursor:pointer;
            border:0;
            color:var(--bg);
            background:linear-gradient(90deg,var(--accent-1),var(--accent-2));
            box-shadow:0 8px 24px rgba(7,12,23,0.55);
        }
        .btn.ghost{
            background:transparent;
            border:1px solid rgba(255,255,255,0.06);
            color:var(--muted);
            font-weight:600;
        }

        .preview{
            background:var(--card);
            border-radius:12px;
            padding:14px;
            box-shadow: inset 0 -8px 40px rgba(0,0,0,0.3);
            display:flex;
            flex-direction:column;
            align-items:stretch;
            gap:10px;
        }
        .mini{
            height:110px;
            border-radius:10px;
            background:linear-gradient(135deg, rgba(124,58,237,0.12), rgba(6,182,212,0.08));
            display:flex;
            align-items:center;
            justify-content:center;
            color:white;
            font-weight:700;
            letter-spacing:0.6px;
        }
        .meta{color:var(--muted); font-size:13px; text-align:center}

        .grid{
            display:grid;
            grid-template-columns:repeat(auto-fit,minmax(220px,1fr));
            gap:18px;
        }

        .card{
            background:linear-gradient(180deg, rgba(255,255,255,0.02), transparent);
            border-radius:12px;
            padding:18px;
            box-shadow: 0 6px 28px rgba(2,6,23,0.55);
            transition: transform .18s ease, box-shadow .18s ease;
        }
        .card:hover{ transform:translateY(-6px); box-shadow:0 18px 50px rgba(2,6,23,0.7) }

        .card h3{ margin:0 0 6px 0; font-size:18px }
        .card p{ margin:0; color:var(--muted); font-size:14px; line-height:1.45 }

        footer{
            margin-top:28px;
            color:var(--muted);
            font-size:13px;
            display:flex;
            align-items:center;
            justify-content:space-between;
            gap:12px;
        }

        /* responsive */
        @media (max-width:880px){
            .hero{ grid-template-columns:1fr; }
            .preview{ order:-1 }
        }
    </style>
</head>
<body>
    <div class="container">
        <header>
            <div class="brand">
                <div class="logo">MV</div>
                <div>
                    <div style="font-weight:800">Mr Vahatra</div>
                    <div style="font-size:12px; color:var(--muted)">Design d'exemple</div>
                </div>
            </div>

            <nav>
                <a href="#">Accueil</a>
                <a href="#">Fonctionnalités</a>
                <a href="#">Contact</a>
            </nav>
        </header>

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
                                    java.util.List<String> etudiants = (java.util.List<String>) request.getAttribute("etudiants");
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
                                    java.util.List<String> couleurs = (java.util.List<String>) request.getAttribute("couleurs");
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
                        <!-- Liens et formulaire pour tester les trois méthodes /demo/multi -->
                        <a href="<%= request.getContextPath() %>/demo/multi" class="btn">Tester GET (@GetMapping)</a>
                        <form action="<%= request.getContextPath() %>/demo/multi" method="post" style="display:inline">
                            <button type="submit" class="btn">Tester POST (@PostMapping)</button>
                        </form>
                        <a href="<%= request.getContextPath() %>/demo/multi?force=all" class="btn ghost">Tester ALL (@MethodeAnnotation)</a>
                    </div>

                    <div style="margin-top:12px; display:flex; gap:10px; align-items:center;">
                        <a href="<%= request.getContextPath() %>/upload.jsp" class="btn">Formulaire d'upload</a>
                        <a href="<%= request.getContextPath() %>/api/account?id=1" class="btn">API: /api/account?id=1</a>
                        <a href="<%= request.getContextPath() %>/api/accounts" class="btn">API: /api/accounts</a>
                        <a href="<%= request.getContextPath() %>/api/modelview" class="btn ghost">API: /api/modelview</a>
                    </div>
                </div>

                <aside class="preview" aria-label="Aperçu">
                    <div class="mini">Aperçu visuel</div>
                    <div class="meta">Exemple de composant réactif — carte, bouton, mise en page</div>
                </aside>
            </section>

            <section class="grid" aria-label="Fonctionnalités">
                <article class="card">
                    <h3>Design moderne</h3>
                    <p>Couleurs douces, ombres subtiles et typographie claire pour un rendu professionnel.</p>
                </article>

                <article class="card">
                    <h3>Responsive</h3>
                    <p>La mise en page s'adapte aux écrans mobiles, tablette et bureau sans effort.</p>
                </article>

                <article class="card">
                    <h3>Facile à modifier</h3>
                    <p>Toutes les règles sont dans une balise &lt;style&gt; pour un accès simple et rapide.</p>
                </article>

                <article class="card">
                    <h3>Prêt pour JSP</h3>
                    <p>Le fichier contient l'entête JSP minimal. Ajoutez vos balises Java/JSP où nécessaire.</p>
                </article>
            </section>
        </main>

        <footer>
            <div>© Mr Vahatra — Exemple</div>
            <div>Basé sur HTML5 & CSS (style interne)</div>
        </footer>
    </div>
</body>
</html>