<h1 align="center">Proyecto 1</h1>

<div align="center">
🙍‍♂️ Joab Israel Ajsivinac Ajsivinac 🆔 202200135
</div>
<div align="center">
📕 SISTEMAS DE BASES DE DATOS 1
</div>
<div align="center"> 🏛 Universidad San Carlos de Guatemala</div>
<div align="center"> 📆 Segundo Semestre 2024</div>



# ⚽ Objetivos

### Objetivo General
El propósito principal del proyecto es que los estudiantes adquieran experiencia en el diseño y manejo de bases de datos SQL dentro de un entorno bancario, desarrollando competencias clave como la normalización, la gestión de transacciones, la creación de consultas avanzadas y la optimización para el manejo eficiente de grandes volúmenes de datos en un entorno de producción.

### Objetivos Específicos
1. **Diseño de Base de Datos:** El estudiante debe crear una base de datos completamente normalizada que refleje las operaciones de un banco real.
2. **Gestión de Transacciones:** Desarrollar la habilidad para gestionar transacciones bancarias de manera segura y eficiente, garantizando la integridad de los datos.
3. **Consultas SQL Avanzadas:** Capacitar a los estudiantes para escribir consultas complejas que involucren múltiples tablas, manejo de fechas, agregaciones y optimización de rendimiento.
4. **Soporte de Cargas Simultáneas:** Diseñar y validar el sistema para que soporte múltiples operaciones simultáneas, asegurando la integridad de los datos y un rendimiento óptimo.
5. **Seguridad de Datos:** Implementar mecanismos robustos de seguridad, incluyendo controles de acceso a la base de datos y gestión segura de transacciones.
6. **Modelado de Base de Datos:** Aplicar las mejores prácticas de modelado de datos en la creación de bases de datos transaccionales, asegurando la integridad referencial y la optimización de consultas.

## 📟 Instalación
Descargue el código o bien clone el repositorio en una carpeta.

Si se opta por la clonación se hace con la siguiente linea de código en terminal (Antes de ejecutar el codigo asegurese de estar en la carpeta donde lo quiere descargar)

```bash
git clone https://github.com/J-Ajsivinac/BD1_P1_202200135.git
```

---

**Buscar la imagen oficial de Oracle en Docker Hub**

>Oracle proporciona imágenes oficiales para ejecutar una base de datos Oracle en Docker. Puedes buscar las imágenes disponibles con este comando:
>
>```bash
>docker search oracle/database
>```

**Descargar la imagen de Oracle**

>Una de las imágenes más populares es la de Oracle Database Express Edition (XE). Descarga la imagen ejecutando el siguiente comando:
>
>```bash
>docker pull gvenzl/oracle-xe
>```

**Crear y ejecutar un contenedor de Oracle**

>Para ejecutar la base de datos Oracle, puedes usar el siguiente comando:
>
>```bash
>
>docker run -d --name oracle-xe -p 1521:1521 -p 5500:5500 -e ORACLE_PASSWORD=your_password gvenzl/oracle-xe
>```

Esto hará lo siguiente:

- Crea un contenedor en segundo plano (`d`).
- Asigna los puertos estándar 1521 (para conexiones SQL*Net) y 5500 (para Oracle Enterprise Manager).
- Establece la contraseña de la base de datos usando la variable `ORACLE_PASSWORD`.

**Verificar el estado del contenedor**

>Para ver si el contenedor se está ejecutando correctamente, puedes usar el comando:
>
>```bash
>docker ps
>```

Esto mostrará una lista de los contenedores activos, incluyendo el contenedor de Oracle Database.

**Conectar a la base de datos**

> Puedes conectarte a la base de datos Oracle usando `sqlplus` o cualquier otra herramienta de cliente de base de datos. La conexión por defecto:
> 
> - **Host:** localhost
> - **Puerto:** 1521
> - **SID:** XE
> - **Usuario:** SYSTEM
> - **Contraseña:** La que especificaste en `ORACLE_PASSWORD`.