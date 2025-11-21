<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width,initial-scale=1" />
    <title>Formulaire Test - Étudiant</title>
    <style>
        * { box-sizing: border-box; }
        body {
            margin: 0;
            font-family: "Segoe UI", system-ui, -apple-system, Arial, sans-serif;
            background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
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
        input[type="text"],
        input[type="number"] {
            width: 100%;
            padding: 12px 16px;
            border: 2px solid #e0e0e0;
            border-radius: 8px;
            font-size: 15px;
            transition: border-color 0.2s;
        }
        input[type="text"]:focus,
        input[type="number"]:focus {
            outline: none;
            border-color: #667eea;
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
            background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
            color: white;
        }
        button[type="submit"]:hover {
            transform: translateY(-2px);
            box-shadow: 0 8px 20px rgba(102, 126, 234, 0.4);
        }
        button[type="reset"] {
            background: #f0f0f0;
            color: #666;
        }
        button[type="reset"]:hover {
            background: #e0e0e0;
        }
        .info-box {
            background: #f8f9ff;
            border-left: 4px solid #667eea;
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
            color: #667eea;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>📝 Test Formulaire</h1>
        <p class="subtitle">Test du binding automatique des paramètres</p>
        
        <div class="info-box">
            <p><strong>URL cible :</strong> /etudiant/numero</p>
            <p><strong>Méthode :</strong> etudiant(int id)</p>
            <p>Le paramètre "id" sera automatiquement converti en entier</p>
        </div>
        
        <form action="<%= request.getContextPath() %>/etudiant/numero" method="post">
            <div class="form-group">
                <label for="id">ID Étudiant *</label>
                <input 
                    type="number" 
                    id="id" 
                    name="id" 
                    placeholder="Entrez un numéro (ex: 123)" 
                    required
                    min="1"
                />
            </div>
            
            <div class="btn-group">
                <button type="submit">✓ Envoyer</button>
                <button type="reset">⟲ Réinitialiser</button>
            </div>
        </form>
        
        <div style="margin-top: 30px; padding-top: 20px; border-top: 1px solid #e0e0e0;">
            <p style="margin: 0; color: #999; font-size: 13px; text-align: center;">
                Framework Mr Vahatra - Sprint 4
            </p>
        </div>
    </div>
</body>
</html>
