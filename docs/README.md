🧾 Descripción
Este proyecto consiste en un sitio web estático servido mediante un contenedor Docker con Nginx. El objetivo es encapsular el contenido en un entorno replicable y profesional, sin necesidad de levantar servidores manualmente.

Estructura del proyecto
proyecto-linux-grupo11/
├── Dockerfile
├── README.md
├── web/
│   ├── index.html
│   └── imagen.jpg




🐳 Contenedor Nginx
🔧 Construcción de la imagen
Desde la raíz del proyecto:
docker build -t grupo11-nginx .



🚀 Ejecución del contenedor
docker run -d -p 8080:80 grupo11-nginx



Esto sirve el sitio en http://localhost:8080

🧪 Verificación
Para confirmar que el contenedor está corriendo:
docker ps


Deberías ver una línea con grupo11-nginx y el puerto 8080->80.
🛠️ Solución de errores comunes
- Error: address already in use
El puerto 8080 está ocupado. Detén el proceso con:
sudo lsof -i :8080
kill <PID>
- Error al construir la imagen (COPY web/ falla)
Asegúrate de ejecutar docker build desde la raíz del proyecto, no desde web/
📦 Requisitos
- Docker instalado
- Carpeta web/ con index.html y recursos estáticos
