---

## 👥 Créditos del Grupo

Este proyecto fue desarrollado por el Grupo 11 como parte de la práctica de administración de sistemas en entorno Linux. Participantes:

- Marcos Murga (@marsharmurg)
- [Agregar nombres de otros integrantes si aplica]

---

## 🔁 Replicación del Entorno

Para instalar y configurar este entorno en otra máquina Linux compatible:

1. **Clonar el repositorio**
   ```bash
   git clone https://github.com/marsharmurg/proyecto-linux-grupo11.git
   cd proyecto-linux-grupo11
   
   ##Crear estructura de directorios

   sudo mkdir -p /proyecto/{datos,web,scripts,capturas}

   - Asignar grupos y permisos
sudo chown :soporte /proyecto/datos
sudo chown :web /proyecto/web
sudo chmod g+s /proyecto/datos /proyecto/web

- Instalar Docker

sudo apt update
sudo apt install docker.io
sudo systemctl enable docker
sudo systemctl start docker

Agregar usuarios al grupo docker

sudo usermod -aG docker adminsys
sudo usermod -aG docker tecnico

Configurar cron para monitoreo
crontab -e
# Agregar:
*/30 * * * * /proyecto/scripts/reporte_sistema.sh >> /var/log/proyecto/reporte_sistema.log 2>&1

	Verificar funcionamiento
docker run hello-world
tail /var/log/proyecto/reporte_sistema.log

   
