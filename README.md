# Invitación digital — Virgen de Urkupiña

Fecha: **24 de octubre de 2026, 21:45**. Lugar: **Catamarca 1356**.

## Listado importado
Se importaron **27 familias** y **94 personas previstas** según la columna PERSONAS. Cada familia debe seleccionar la cantidad que realmente asistirá.

## Configuración
1. Crear un proyecto en https://supabase.com/
2. En SQL Editor → New query, ejecutar `supabase-setup.sql`.
3. Copiar Project URL y la clave pública publishable/anon desde la configuración/API del proyecto.
4. En `index.html`, reemplazar `PEGAR_AQUI_URL_DE_SUPABASE` y `PEGAR_AQUI_CLAVE_PUBLICA_ANON`. Nunca usar la clave `service_role`/secret en el navegador.
5. Crear un repositorio nuevo en https://github.com/new, por ejemplo `urkupina-confirmacion`, y subir `index.html` a la raíz.
6. En Settings → Pages, elegir Deploy from a branch, rama `main`, carpeta `/ (root)`.
7. Probar una confirmación y borrar la fila de prueba en Supabase antes de compartir.

## Privacidad
Los nombres del desplegable están incluidos en el código público de la página y pueden ser vistos por quien inspeccione el sitio. Si eso no te sirve, conviene usar códigos individuales por familia con validación del lado del servidor. Las respuestas individuales no tienen lectura pública; los totales agregados sí.
Cada familia puede confirmar una vez; para corregir una respuesta, la organización debe modificarla en Supabase. El formulario acepta hasta 15 asistentes por familia.
