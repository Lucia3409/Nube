#!/bin/bash
dnf update -y
dnf install -y nginx
systemctl start nginx
systemctl enable nginx

cat << 'EOF' > /usr/share/nginx/html/index.html
<!DOCTYPE html>
<html lang="es">
<head>
  <meta charset="UTF-8">
  <title>Librería Tinta</title>
  <style>
    body { font-family: Arial, sans-serif; background-color: #f4f1ea; color: #2c2c2c; text-align: center; padding: 50px; }
    .card { background: white; max-width: 600px; margin: auto; padding: 30px; border-radius: 8px; box-shadow: 0 2px 8px rgba(0,0,0,0.1); }
    h1 { color: #8b3a3a; }
  </style>
</head>
<body>
  <div class="card">
    <h1>Librería Tinta</h1>
    <p>Tu librería independiente de barrio, ahora también en la nube.</p>
    <hr>
    <small>Servidor web desplegado en AWS EC2 (us-east-1)</small>
  </div>
</body>
</html>
EOF
