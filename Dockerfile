# Usa una imagen base de Python
FROM python:3.9

# Establece el directorio de trabajo dentro del contenedor
WORKDIR /app

# Copia el archivo requirements.txt al directorio de trabajo
COPY requirements.txt .
RUN pip install --no-cache-dir --upgrade -r requirements.txt

# Copia los archivos de la aplicación al directorio de trabajo
COPY . .

# Expone el puerto 8000
EXPOSE 8000

# Comando para iniciar la aplicación
CMD ["python", "main.py"]