<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width,initial-scale=1" />
    <title>Upload de fichier</title>
    <style>
        body{ font-family: Arial, Helvetica, sans-serif; padding:24px; background:#f6f8fb }
        .card{ background:#fff; padding:18px; border-radius:8px; box-shadow:0 6px 24px rgba(0,0,0,0.08); max-width:720px; margin:0 auto }
        .btn{ padding:8px 12px; border-radius:6px; background:#6b46c1; color:white; border:0; cursor:pointer }
        .muted{ color:#666; font-size:14px }
    </style>
</head>
<body>
    <div class="card">
        <h2>Uploader un fichier</h2>
        <p class="muted">Le formulaire envoie `multipart/form-data` vers l'endpoint `/api/upload` (POST). Taille max: 10MB.</p>

        <form action="<%= request.getContextPath() %>/api/upload" method="post" enctype="multipart/form-data">
            <div style="margin-bottom:10px">
                <label for="file">Fichier</label><br/>
                <input type="file" name="file" id="file" required />
            </div>
            <div style="margin-bottom:10px">
                <label for="desc">Description (optionnel)</label><br/>
                <input type="text" name="desc" id="desc" style="width:100%" />
            </div>
            <button class="btn" type="submit">Envoyer</button>
        </form>

        <hr/>
        <h4>Exemples curl</h4>
        <pre>curl -F "file=@/path/to/file.jpg" \
  "http://localhost:8082<%= request.getContextPath() %>/api/upload"</pre>
    </div>
</body>
</html>
