
# ConnectApp

## Descripción

ConnectApp es una aplicación móvil desarrollada en Flutter
y Dart como parte del taller de desarrollo de aplicaciones
móviles.

La aplicación simula una red social sencilla e integra
tres secciones principales: Home, Chats y Laboratorio
de widgets.

## Funcionalidades

### Home
- Visualización de dos publicaciones.
- Fotografías de perfil e imágenes principales.
- Botón interactivo de Me gusta.
- Botón de comentarios.
- Banner informativo.
- Carrusel horizontal de tres categorías.

### Chats
- Cinco conversaciones.
- Fotografías de perfil.
- Nombre y último mensaje.
- Hora de conversación.
- Indicadores de mensajes sin leer.

### Laboratorio de widgets
- Contador numérico interactivo.
- Botón para incrementar.
- Botón para disminuir.
- Botón para reiniciar.
- Actualización de interfaz mediante setState().

## Tecnologías utilizadas

- Flutter
- Dart
- Material Design

## Conceptos implementados

- StatelessWidget
- StatefulWidget
- Scaffold
- AppBar
- BottomNavigationBar
- Row y Column
- Container y Padding
- ListView
- Image.network()
- Variables y eventos
- setState()

## Ejecución del proyecto

1. Instalar Flutter y Android Studio.
2. Clonar o descargar este repositorio.
3. Abrir la carpeta del proyecto.
4. Ejecutar:

flutter pub get

5. Iniciar un emulador Android.
6. Ejecutar:

flutter run

## Consideraciones

La aplicación utiliza información estática.

No implementa bases de datos, autenticación,
archivos JSON ni consumo de API.

Las imágenes se cargan desde internet mediante
Image.network(), por lo que requieren conexión.

## Evidencias

Las capturas de funcionamiento se encuentran
en la carpeta evidencias.

## Proyecto académico

Aplicación desarrollada para demostrar el uso de
widgets, navegación, layouts, eventos y manejo
básico de variables en Flutter.
