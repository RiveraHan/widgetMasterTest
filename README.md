# Widget Master

Este repositorio contiene tres widgets personalizados para Flutter:

- **EducationalCard**: Una tarjeta educativa con imagen, título, descripción y botones interactivos.
- **CustomProgressIndicator**: Un indicador de progreso circular personalizable.
- **CustomQuiz**: Un widget de cuestionario personalizado.

## Instalación

1. Clona el repositorio en tu máquina local:

   ```sh
   git clone https://github.com/tu-usuario/widget-master.git
   cd widget-master

2. Instala las dependencias de Flutter:
    ```sh
    flutter pub get
3. Corre el app con el comando:
    ```sh
    flutter run
4. Para correr las pruebas: 
    ```sh
    flutter test

## Uso de los widgets

### EducationalCard

```dart
EducationalCard(
  imageUrl: 'https://example.com/image.jpg',
  title: 'Título del Curso',
  description: 'Descripción del curso.',
  onViewMore: () => _viewMore(context, 'Título del Curso', 'https://example.com/image.jpg'),
  onShare: () => _share(context, 'Título del Curso'),
);