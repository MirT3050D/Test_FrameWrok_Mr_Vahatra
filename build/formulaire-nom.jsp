<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width,initial-scale=1" />
    <title>Formulaire Test - @RequestParam</title>
    <style>
        * { box-sizing: border-box; }
        body {
            margin: 0;
            font-family: "Segoe UI", system-ui, -apple-system, Arial, sans-serif;
            background: linear-gradient(135deg, #f093fb 0%, #f5576c 100%);
            min-height: 100vh;
            display: flex;
            align-items: center;
            justify-content: center;
            padding: 20px;
        }
        .container {
            background: white;
            border-radius: 16px;
            box-shadow: 0 20px 60px rgba(0,0,0,0.3);
            padding: 40px;
            max-width: 500px;
            width: 100%;
        }
        h1 {
            margin: 0 0 10px 0;
            color: #333;
            font-size: 28px;
        }
        .subtitle {
            color: #666;
            margin: 0 0 30px 0;
            font-size: 14px;
        }
        .form-group {
            margin-bottom: 20px;
        }
        label {
            display: block;
            margin-bottom: 8px;
            color: #333;
            font-weight: 600;
            font-size: 14px;
        }
        input[type="text"] {
            width: 100%;
            padding: 12px 16px;
            border: 2px solid #e0e0e0;
            border-radius: 8px;
            font-size: 15px;
            transition: border-color 0.2s;
        }
        input[type="text"]:focus {
            outline: none;
            border-color: #f5576c;
        }
        .btn-group {
            display: flex;
            gap: 12px;
            margin-top: 30px;
        }
        button {
            flex: 1;
            padding: 14px 24px;
            border: none;
            border-radius: 8px;
            font-size: 16px;
            font-weight: 600;
            cursor: pointer;
            transition: transform 0.2s, box-shadow 0.2s;
        }
        button[type="submit"] {
            background: linear-gradient(135deg, #f093fb 0%, #f5576c 100%);
            color: white;
        }
        button[type="submit"]:hover {
            transform: translateY(-2px);
            box-shadow: 0 8px 20px rgba(245, 87, 108, 0.4);
        }
        button[type="reset"] {
            background: #f0f0f0;
            color: #666;
        }
        button[type="reset"]:hover {
            background: #e0e0e0;
        }
        .info-box {
            background: #fff5f7;
            border-left: 4px solid #f5576c;
            padding: 16px;
            border-radius: 8px;
            margin-bottom: 24px;
        }
        .info-box p {
            margin: 0;
            color: #555;
            font-size: 14px;
            line-height: 1.6;
        }
        .info-box strong {
            color: #f5576c;
        }
        .code {
            background: #f5f5f5;
            padding: 2px 6px;
            border-radius: 4px;
            font-family: 'Courier New', monospace;
            font-size: 13px;
            color: #e91e63;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>📝 Test @RequestParam</h1>
        <p class="subtitle">Test de l'annotation @RequestParam avec nom différent</p>
        
        <div class="info-box">
            <p><strong>URL cible :</strong> /etudiant/numero</p>
            <p><strong>Méthode :</strong> etudiantNom(<span class="code">@RequestParam("nom")</span> String nom)</p>
            <p style="margin-top: 8px;">Le paramètre <span class="code">nom</span> du formulaire sera mappé à l'argument <span class="code">nom</span> de la méthode grâce à @RequestParam</p>
        </div>
        
        <form action="<%= request.getContextPath() %>/etudiant/numero" method="post">
            <div class="form-group">
                <label for="nom">Nom de l'étudiant *</label>
                <input 
                    type="text" 
                    id="nom" 
                    name="nom" 
                    placeholder="Entrez un nom (ex: Dupont)" 
                    required
                />
            </div>
            
            <div class="btn-group">
                <button type="submit">✓ Envoyer</button>
                <button type="reset">⟲ Réinitialiser</button>
            </div>
        </form>
        
        <div style="margin-top: 30px; padding-top: 20px; border-top: 1px solid #e0e0e0;">
            <p style="margin: 0; color: #999; font-size: 13px; text-align: center;">
                Framework Mr Vahatra - Sprint 4 - @RequestParam Demo
            </p>
        </div>
    </div>
</body>
</html>
