<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width,initial-scale=1" />
    <title>Créer un étudiant</title>
    <link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;600&display=swap" rel="stylesheet">
    <style>
        body {
            background: linear-gradient(135deg, #7c3aed 0%, #06b6d4 100%);
            min-height: 100vh;
            margin: 0;
            font-family: 'Inter', Arial, sans-serif;
            display: flex;
            align-items: center;
            justify-content: center;
        }
        .form-container {
            background: #fff;
            border-radius: 18px;
            box-shadow: 0 8px 40px rgba(124,58,237,0.10), 0 1.5px 8px rgba(6,182,212,0.10);
            padding: 38px 32px 32px 32px;
            max-width: 420px;
            width: 100%;
        }
        h2 {
            margin: 0 0 18px 0;
            color: #7c3aed;
            font-weight: 800;
            font-size: 2rem;
            letter-spacing: -1px;
        }
        .form-group {
            margin-bottom: 18px;
        }
        label {
            display: block;
            margin-bottom: 7px;
            color: #222;
            font-weight: 600;
        }
        input[type="text"], input[type="email"], input[type="number"] {
            width: 100%;
            padding: 12px 14px;
            border: 1.5px solid #e0e0e0;
            border-radius: 8px;
            font-size: 1rem;
            background: #f8f8ff;
            transition: border-color 0.2s;
        }
        input:focus {
            outline: none;
            border-color: #7c3aed;
        }
        .btn {
            width: 100%;
            padding: 14px 0;
            background: linear-gradient(90deg, #7c3aed 0%, #06b6d4 100%);
            color: #fff;
            border: none;
            border-radius: 8px;
            font-size: 1.1rem;
            font-weight: 700;
            cursor: pointer;
            margin-top: 10px;
            box-shadow: 0 2px 8px rgba(124,58,237,0.08);
            transition: background 0.2s;
        }
        .btn:hover {
            background: linear-gradient(90deg, #06b6d4 0%, #7c3aed 100%);
        }
    </style>
</head>
<body>
    <form class="form-container" action="<%= request.getContextPath() %>/etudiant/create" method="post">
        <h2>Créer un étudiant</h2>
        <div class="form-group">
            <label for="nom">Nom</label>
            <input type="text" id="nom" name="nom" required />
        </div>
        <div class="form-group">
            <label for="prenom">Prénom</label>
            <input type="text" id="prenom" name="prenom" required />
        </div>
        <div class="form-group">
            <label for="age">Âge</label>
            <input type="number" id="age" name="age" min="0" max="120" required />
        </div>
        <div class="form-group">
            <label for="email">Email</label>
            <input type="email" id="email" name="email" required />
        </div>
        <button type="submit" class="btn">Créer l'étudiant</button>
    </form>
</body>
</html>
