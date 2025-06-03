# 06 Medios

## Trabajando con Imágenes, Sonidos y Multimedia

En este capítulo aprenderemos a incorporar elementos multimedia en nuestros proyectos de Processing. Exploraremos cómo cargar, mostrar y manipular imágenes, reproducir sonidos, y trabajar con video.

### Trabajando con Imágenes

#### Cargando Imágenes

Para usar imágenes en Processing, primero debemos cargarlas en memoria:

```processing
PImage miImagen;

void setup() {
  size(800, 600);
  
  // Cargar imagen desde la carpeta "data"
  miImagen = loadImage("imagen.jpg");
}

void draw() {
  background(255);
  
  // Mostrar imagen en posición (0, 0)
  image(miImagen, 0, 0);
}
```

#### Organizando Archivos de Medios

```
MiSketch/
├── MiSketch.pde
└── data/
    ├── imagen1.jpg
    ├── imagen2.png
    ├── sonido.wav
    └── video.mp4
```

**Formatos de imagen soportados:**
- **JPG/JPEG**: Para fotografías
- **PNG**: Para imágenes con transparencia
- **GIF**: Para imágenes simples
- **TGA**: Para imágenes de alta calidad

#### Mostrando Imágenes

##### Función `image()`
```processing
PImage foto;

void setup() {
  size(600, 400);
  foto = loadImage("paisaje.jpg");
}

void draw() {
  background(255);
  
  // Mostrar imagen en posición original
  image(foto, 0, 0);
  
  // Mostrar imagen redimensionada
  image(foto, 100, 100, 200, 150);
  
  // Mostrar imagen siguiendo al ratón
  image(foto, mouseX, mouseY, 100, 75);
}
```

#### Propiedades de Imágenes

```processing
PImage img;

void setup() {
  img = loadImage("foto.jpg");
  
  println("Ancho: " + img.width);
  println("Alto: " + img.height);
  
  // Redimensionar imagen
  img.resize(400, 300);
  
  // Redimensionar manteniendo proporción
  img.resize(400, 0);  // Alto automático
  img.resize(0, 300);  // Ancho automático
}
```

### Manipulación de Imágenes

#### Filtros de Imagen

```processing
PImage original, modificada;

void setup() {
  size(800, 400);
  original = loadImage("retrato.jpg");
  modificada = original.copy();  // Crear copia
}

void draw() {
  background(255);
  
  // Imagen original
  image(original, 0, 0, 400, 400);
  
  // Imagen con filtro
  image(modificada, 400, 0, 400, 400);
}

void keyPressed() {
  modificada = original.copy();  // Reiniciar
  
  if (key == '1') {
    modificada.filter(GRAY);     // Escala de grises
  }
  if (key == '2') {
    modificada.filter(INVERT);   // Invertir colores
  }
  if (key == '3') {
    modificada.filter(POSTERIZE, 4);  // Posterizar
  }
  if (key == '4') {
    modificada.filter(BLUR, 2);  // Desenfoque
  }
  if (key == '5') {
    modificada.filter(ERODE);    // Erosión
  }
  if (key == '6') {
    modificada.filter(DILATE);   // Dilatación
  }
}
```

#### Acceso a Píxeles

```processing
PImage img;

void setup() {
  size(400, 400);
  img = loadImage("imagen.jpg");
  img.resize(width, height);
}

void draw() {
  background(255);
  
  img.loadPixels();  // Cargar array de píxeles
  
  // Modificar píxeles individualmente
  for (int i = 0; i < img.pixels.length; i++) {
    color c = img.pixels[i];
    
    // Extraer componentes RGB
    float r = red(c);
    float g = green(c);
    float b = blue(c);
    
    // Aplicar efecto
    img.pixels[i] = color(r * 0.5, g, b * 1.5);
  }
  
  img.updatePixels();  // Actualizar imagen
  
  image(img, 0, 0);
}
```

### Trabajo con Sonido

#### Configuración de Audio

Para trabajar con sonido, necesitas instalar la librería Sound:

1. **Sketch** → **Import Library** → **Add Library**
2. Buscar "**Sound**"
3. Instalar la librería oficial

```processing
import processing.sound.*;

SoundFile cancion;
SoundFile efecto;

void setup() {
  size(400, 300);
  
  // Cargar archivos de audio
  cancion = new SoundFile(this, "musica.mp3");
  efecto = new SoundFile(this, "beep.wav");
}

void draw() {
  background(255);
  
  fill(0);
  text("Presiona ESPACIO para música", 10, 50);
  text("Presiona cualquier otra tecla para efecto", 10, 80);
}

void keyPressed() {
  if (key == ' ') {
    if (cancion.isPlaying()) {
      cancion.pause();
    } else {
      cancion.play();
    }
  } else {
    efecto.play();
  }
}
```

#### Control de Audio

```processing
import processing.sound.*;

SoundFile musica;
float volumen = 0.5;

void setup() {
  size(400, 200);
  musica = new SoundFile(this, "fondo.mp3");
  musica.loop();  // Reproducir en bucle
}

void draw() {
  background(255);
  
  // Control visual del volumen
  fill(200);
  rect(50, 100, 300, 20);
  
  fill(100);
  rect(50, 100, volumen * 300, 20);
  
  // Texto informativo
  fill(0);
  text("Volumen: " + nf(volumen * 100, 0, 1) + "%", 50, 90);
  text("Arrastra para cambiar volumen", 50, 140);
}

void mouseDragged() {
  if (mouseY > 90 && mouseY < 130) {
    volumen = constrain(map(mouseX, 50, 350, 0, 1), 0, 1);
    musica.amp(volumen);
  }
}
```

### Trabajando con Video

#### Reproducir Video

```processing
import processing.video.*;

Movie video;

void setup() {
  size(640, 480);
  
  // Cargar video
  video = new Movie(this, "clip.mp4");
  video.loop();  // Reproducir en bucle
}

void draw() {
  background(0);
  
  // Mostrar video
  image(video, 0, 0, width, height);
  
  // Controles
  fill(255);
  text("Clic para pausar/reproducir", 10, height - 20);
}

// Necesario para la reproducción de video
void movieEvent(Movie m) {
  m.read();
}

void mousePressed() {
  if (video.isPlaying()) {
    video.pause();
  } else {
    video.play();
  }
}
```

### Ejemplos Prácticos

#### Ejemplo 1: Galería de Imágenes
```processing
PImage[] fotos;
int indiceActual = 0;

void setup() {
  size(800, 600);
  
  // Cargar múltiples imágenes
  fotos = new PImage[3];
  fotos[0] = loadImage("foto1.jpg");
  fotos[1] = loadImage("foto2.jpg");
  fotos[2] = loadImage("foto3.jpg");
  
  // Redimensionar todas las imágenes
  for (int i = 0; i < fotos.length; i++) {
    fotos[i].resize(width, height);
  }
}

void draw() {
  background(255);
  
  // Mostrar imagen actual
  image(fotos[indiceActual], 0, 0);
  
  // Información
  fill(255);
  rect(10, 10, 200, 60);
  fill(0);
  text("Imagen " + (indiceActual + 1) + " de " + fotos.length, 20, 30);
  text("← → para navegar", 20, 50);
}

void keyPressed() {
  if (keyCode == LEFT) {
    indiceActual = (indiceActual - 1 + fotos.length) % fotos.length;
  }
  if (keyCode == RIGHT) {
    indiceActual = (indiceActual + 1) % fotos.length;
  }
}
```

#### Ejemplo 2: Visualizador de Música
```processing
import processing.sound.*;

SoundFile cancion;
Amplitude analizador;

void setup() {
  size(800, 400);
  
  cancion = new SoundFile(this, "musica.wav");
  cancion.loop();
  
  // Crear analizador de amplitud
  analizador = new Amplitude(this);
  analizador.input(cancion);
}

void draw() {
  background(0);
  
  // Obtener nivel de audio
  float nivel = analizador.analyze();
  
  // Visualización circular
  translate(width/2, height/2);
  
  fill(255, 100, 100);
  noStroke();
  
  float radio = map(nivel, 0, 1, 50, 200);
  ellipse(0, 0, radio, radio);
  
  // Barras alrededor del círculo
  for (int i = 0; i < 360; i += 10) {
    float longitud = map(nivel, 0, 1, 10, 100);
    
    pushMatrix();
    rotate(radians(i));
    fill(255, map(i, 0, 360, 0, 255), 255);
    rect(100, -2, longitud, 4);
    popMatrix();
  }
}
```

#### Ejemplo 3: Foto con Efectos en Tiempo Real
```processing
import processing.video.*;

Capture camara;

void setup() {
  size(640, 480);
  
  // Inicializar cámara
  camara = new Capture(this, 640, 480);
  camara.start();
}

void draw() {
  if (camara.available()) {
    camara.read();
  }
  
  // Mostrar imagen original o con efectos
  PImage temp = camara.copy();
  
  // Aplicar filtro según tecla presionada
  if (keyPressed) {
    if (key == '1') temp.filter(GRAY);
    if (key == '2') temp.filter(INVERT);
    if (key == '3') temp.filter(POSTERIZE, 4);
    if (key == '4') temp.filter(BLUR, 2);
  }
  
  image(temp, 0, 0);
  
  // Instrucciones
  fill(255);
  text("1-4: Filtros, cualquier otra: normal", 10, height - 20);
}
```

### Ejercicios de Código Incluidos

Los archivos en la carpeta `code_06` incluyen:

- **Carga y visualización**: Trabajar con diferentes formatos
- **Filtros e efectos**: Manipulación de imágenes
- **Audio básico**: Reproducción y control
- **Proyectos multimedia**: Combinando imagen y sonido
- **Interactividad multimedia**: Respuesta a eventos

### Optimización y Rendimiento

#### Consejos para Imágenes

1. **Tamaño adecuado**: No cargues imágenes más grandes de lo necesario
```processing
// Redimensionar al cargar
PImage img = loadImage("grande.jpg");
img.resize(400, 0);  // Reducir tamaño
```

2. **Cargar una sola vez**: Usa `setup()` para cargar medios
```processing
// ✅ Correcto: cargar en setup()
void setup() {
  img = loadImage("foto.jpg");
}

// ❌ Incorrecto: cargar en draw()
void draw() {
  img = loadImage("foto.jpg");  // ¡Muy lento!
}
```

3. **Formatos apropiados**:
   - JPG para fotografías
   - PNG para gráficos con transparencia
   - GIF para animaciones simples

#### Consejos para Audio

1. **Formatos eficientes**: WAV para efectos cortos, MP3 para música
2. **Precarga**: Cargar todos los sonidos en `setup()`
3. **Control de memoria**: Liberar recursos no utilizados

---

**Capítulo anterior**: [05 Interactivo](../05%20Interactivo) | **Siguiente capítulo**: [07 Movimiento](../07%20Movimiento)
