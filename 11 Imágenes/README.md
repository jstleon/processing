# 11 Imágenes

## Trabajo con Imágenes en Processing

Processing nos permite cargar, manipular y mostrar imágenes de diferentes formatos, así como acceder a sus píxeles individualmente.

### Contenido del capítulo:

- 11.1 Carga y visualización de imágenes
- 11.2 Manipulación básica de imágenes
- 11.3 Acceso a píxeles
- 11.4 Filtros y efectos
- 11.5 Creación de imágenes dinámicas
- 11.6 Exportar imágenes

### Objetivos de aprendizaje:

- Cargar y mostrar imágenes
- Manipular propiedades de imágenes
- Acceder y modificar píxeles
- Aplicar filtros y efectos
- Crear visualizaciones con imágenes

## 11.1 Carga y visualización de imágenes

### Formatos soportados:
- **JPEG** (.jpg, .jpeg)
- **PNG** (.png) - Con transparencia
- **GIF** (.gif) - Solo estáticas
- **TIFF** (.tif, .tiff)

### Cargar una imagen:
```processing
PImage imagen;

void setup() {
  size(600, 400);
  // La imagen debe estar en la carpeta 'data' del sketch
  imagen = loadImage("miImagen.jpg");
}

void draw() {
  background(255);
  
  // Mostrar imagen en su tamaño original
  image(imagen, 0, 0);
}
```

### Redimensionar imagen:
```processing
PImage imagen;

void setup() {
  size(600, 400);
  imagen = loadImage("miImagen.jpg");
}

void draw() {
  background(255);
  
  // Mostrar imagen redimensionada
  image(imagen, 0, 0, width, height);
  
  // O redimensionar permanentemente
  // imagen.resize(300, 200);
}
```

### Posicionar imágenes:
```processing
PImage imagen;

void setup() {
  size(800, 600);
  imagen = loadImage("miImagen.jpg");
}

void draw() {
  background(255);
  
  // Imagen centrada
  imageMode(CENTER);
  image(imagen, width/2, height/2);
  
  // Imagen en esquina
  imageMode(CORNER);
  image(imagen, 50, 50, 200, 150);
}
```

## 11.2 Manipulación básica de imágenes

### Rotación y transformaciones:
```processing
PImage imagen;
float angulo = 0;

void setup() {
  size(600, 400);
  imagen = loadImage("miImagen.jpg");
}

void draw() {
  background(255);
  
  // Rotar imagen
  pushMatrix();
  translate(width/2, height/2);
  rotate(angulo);
  imageMode(CENTER);
  image(imagen, 0, 0, 200, 150);
  popMatrix();
  
  angulo += 0.02;
}
```

### Transparencia (tint):
```processing
PImage imagen;

void setup() {
  size(600, 400);
  imagen = loadImage("miImagen.jpg");
}

void draw() {
  background(255);
  
  // Imagen normal
  noTint();
  image(imagen, 0, 0, 200, 150);
  
  // Imagen con tinte rojo
  tint(255, 0, 0);
  image(imagen, 200, 0, 200, 150);
  
  // Imagen semi-transparente
  tint(255, 128);
  image(imagen, 400, 0, 200, 150);
  
  // Imagen con tinte y transparencia
  tint(0, 255, 255, 180);
  image(imagen, 100, 200, 200, 150);
}
```

## 11.3 Acceso a píxeles

### Array de píxeles:
```processing
PImage imagen;

void setup() {
  size(600, 400);
  imagen = loadImage("miImagen.jpg");
  
  // Cargar píxeles en memoria
  imagen.loadPixels();
  
  // Acceder a píxeles individuales
  for (int i = 0; i < imagen.pixels.length; i++) {
    color c = imagen.pixels[i];
    
    float r = red(c);
    float g = green(c);
    float b = blue(c);
    
    // Modificar pixel (ejemplo: invertir colores)
    imagen.pixels[i] = color(255-r, 255-g, 255-b);
  }
  
  // Actualizar imagen con los cambios
  imagen.updatePixels();
}

void draw() {
  image(imagen, 0, 0);
}
```

### Acceso por coordenadas:
```processing
PImage imagen;

void setup() {
  size(400, 300);
  imagen = createImage(width, height, RGB);
  
  imagen.loadPixels();
  
  // Crear degradado
  for (int x = 0; x < imagen.width; x++) {
    for (int y = 0; y < imagen.height; y++) {
      float r = map(x, 0, imagen.width, 0, 255);
      float g = map(y, 0, imagen.height, 0, 255);
      float b = 128;
      
      imagen.pixels[y * imagen.width + x] = color(r, g, b);
    }
  }
  
  imagen.updatePixels();
}

void draw() {
  image(imagen, 0, 0);
}
```

### Función get() y set():
```processing
PImage imagen;

void setup() {
  size(400, 300);
  imagen = loadImage("miImagen.jpg");
}

void draw() {
  background(255);
  image(imagen, 0, 0);
  
  // Obtener color del pixel bajo el mouse
  color c = imagen.get(mouseX, mouseY);
  
  // Mostrar información del color
  fill(0);
  text("R: " + red(c), 10, 20);
  text("G: " + green(c), 10, 40);
  text("B: " + blue(c), 10, 60);
  
  // Mostrar muestra del color
  fill(c);
  rect(10, 80, 50, 50);
}

void mousePressed() {
  // Cambiar pixel clickeado a blanco
  imagen.set(mouseX, mouseY, color(255));
}
```

## 11.4 Filtros y efectos

### Filtros integrados:
```processing
PImage original, filtrada;

void setup() {
  size(800, 400);
  original = loadImage("miImagen.jpg");
  filtrada = original.copy();
}

void draw() {
  background(255);
  
  // Imagen original
  image(original, 0, 0, 200, 150);
  
  // Aplicar diferentes filtros según la tecla presionada
  if (keyPressed) {
    filtrada = original.copy();
    
    switch(key) {
      case '1':
        filtrada.filter(THRESHOLD, 0.5);
        break;
      case '2':
        filtrada.filter(GRAY);
        break;
      case '3':
        filtrada.filter(INVERT);
        break;
      case '4':
        filtrada.filter(POSTERIZE, 4);
        break;
      case '5':
        filtrada.filter(BLUR, 2);
        break;
      case '6':
        filtrada.filter(ERODE);
        break;
      case '7':
        filtrada.filter(DILATE);
        break;
    }
  }
  
  // Imagen filtrada
  image(filtrada, 300, 0, 200, 150);
  
  // Instrucciones
  fill(0);
  text("Original", 50, 170);
  text("Filtrada", 350, 170);
  text("Presiona 1-7 para filtros", 10, 200);
}
```

### Efecto personalizado - Escala de grises:
```processing
PImage imagen;

void setup() {
  size(600, 400);
  imagen = loadImage("miImagen.jpg");
}

void draw() {
  imagen.loadPixels();
  
  for (int i = 0; i < imagen.pixels.length; i++) {
    color c = imagen.pixels[i];
    
    float r = red(c);
    float g = green(c);
    float b = blue(c);
    
    // Conversión a escala de grises
    float gris = (r + g + b) / 3;
    // O más preciso: float gris = 0.299*r + 0.587*g + 0.114*b;
    
    imagen.pixels[i] = color(gris);
  }
  
  imagen.updatePixels();
  image(imagen, 0, 0);
}
```

### Efecto sepia:
```processing
PImage imagen;

void setup() {
  size(600, 400);
  imagen = loadImage("miImagen.jpg");
}

void draw() {
  imagen.loadPixels();
  
  for (int i = 0; i < imagen.pixels.length; i++) {
    color c = imagen.pixels[i];
    
    float r = red(c);
    float g = green(c);
    float b = blue(c);
    
    // Fórmula sepia
    float nuevaR = min(255, (r * 0.393) + (g * 0.769) + (b * 0.189));
    float nuevaG = min(255, (r * 0.349) + (g * 0.686) + (b * 0.168));
    float nuevaB = min(255, (r * 0.272) + (g * 0.534) + (b * 0.131));
    
    imagen.pixels[i] = color(nuevaR, nuevaG, nuevaB);
  }
  
  imagen.updatePixels();
  image(imagen, 0, 0);
}
```

## 11.5 Creación de imágenes dinámicas

### Generar patrones:
```processing
PImage patron;

void setup() {
  size(400, 400);
  patron = createImage(200, 200, RGB);
  generarPatron();
}

void draw() {
  background(255);
  
  // Mostrar patrón en mosaico
  for (int x = 0; x < width; x += patron.width) {
    for (int y = 0; y < height; y += patron.height) {
      image(patron, x, y);
    }
  }
}

void generarPatron() {
  patron.loadPixels();
  
  for (int x = 0; x < patron.width; x++) {
    for (int y = 0; y < patron.height; y++) {
      float distancia = dist(x, y, patron.width/2, patron.height/2);
      float valor = sin(distancia * 0.1) * 128 + 127;
      
      patron.pixels[y * patron.width + x] = color(valor, valor * 0.5, valor * 0.8);
    }
  }
  
  patron.updatePixels();
}

void mousePressed() {
  generarPatron();
}
```

### Mandelbrot fractal:
```processing
PImage fractal;
int maxIteraciones = 100;

void setup() {
  size(600, 600);
  fractal = createImage(width, height, RGB);
  generarMandelbrot();
}

void draw() {
  image(fractal, 0, 0);
}

void generarMandelbrot() {
  fractal.loadPixels();
  
  for (int x = 0; x < width; x++) {
    for (int y = 0; y < height; y++) {
      // Mapear coordenadas de pantalla a plano complejo
      float a = map(x, 0, width, -2.5, 1);
      float b = map(y, 0, height, -1.25, 1.25);
      
      float ca = a;
      float cb = b;
      
      int n = 0;
      while (n < maxIteraciones) {
        float aa = a * a - b * b;
        float bb = 2 * a * b;
        a = aa + ca;
        b = bb + cb;
        
        if (abs(a + b) > 16) {
          break;
        }
        n++;
      }
      
      // Colorear según el número de iteraciones
      float brillo = map(n, 0, maxIteraciones, 0, 255);
      
      if (n == maxIteraciones) {
        fractal.pixels[y * width + x] = color(0);
      } else {
        fractal.pixels[y * width + x] = color(brillo, brillo * 0.5, brillo * 0.8);
      }
    }
  }
  
  fractal.updatePixels();
}
```

## 11.6 Exportar imágenes

### Guardar pantalla:
```processing
void setup() {
  size(400, 300);
}

void draw() {
  background(255);
  
  // Dibujar algo
  fill(255, 0, 0);
  ellipse(mouseX, mouseY, 50, 50);
  
  fill(0, 255, 0);
  rect(100, 100, 80, 60);
}

void keyPressed() {
  if (key == 's') {
    save("miDibujo.png");
    println("Imagen guardada!");
  }
}
```

### Guardar con nombre único:
```processing
void keyPressed() {
  if (key == 's') {
    String nombre = "captura_" + year() + "_" + month() + "_" + day() + "_" + 
                   hour() + "_" + minute() + "_" + second() + ".png";
    save(nombre);
    println("Guardado: " + nombre);
  }
}
```

### Exportar solo una región:
```processing
void keyPressed() {
  if (key == 's') {
    PImage region = get(50, 50, 200, 150);
    region.save("region.png");
  }
}
```

## Ejercicios prácticos:

### 1. Visor de imágenes:
```processing
PImage[] imagenes;
int imagenActual = 0;

void setup() {
  size(800, 600);
  
  // Cargar múltiples imágenes
  imagenes = new PImage[3];
  imagenes[0] = loadImage("imagen1.jpg");
  imagenes[1] = loadImage("imagen2.jpg");
  imagenes[2] = loadImage("imagen3.jpg");
}

void draw() {
  background(255);
  
  if (imagenes[imagenActual] != null) {
    image(imagenes[imagenActual], 0, 0, width, height);
  }
  
  // Controles
  fill(255, 100);
  rect(0, height-50, width, 50);
  
  fill(0);
  text("Imagen " + (imagenActual + 1) + " de " + imagenes.length, 10, height-30);
  text("Usa ← → para navegar", 10, height-10);
}

void keyPressed() {
  if (key == CODED) {
    if (keyCode == LEFT) {
      imagenActual = (imagenActual - 1 + imagenes.length) % imagenes.length;
    } else if (keyCode == RIGHT) {
      imagenActual = (imagenActual + 1) % imagenes.length;
    }
  }
}
```

### 2. Editor de colores:
```processing
PImage imagen;
color colorPincel = color(255, 0, 0);
int tamaño = 20;

void setup() {
  size(800, 600);
  imagen = loadImage("miImagen.jpg");
}

void draw() {
  background(255);
  image(imagen, 0, 0);
  
  // Mostrar pincel
  if (mouseX < imagen.width && mouseY < imagen.height) {
    stroke(255);
    noFill();
    ellipse(mouseX, mouseY, tamaño, tamaño);
  }
  
  // Panel de control
  fill(200);
  rect(imagen.width, 0, width - imagen.width, height);
  
  fill(0);
  text("Editor de Imagen", imagen.width + 10, 20);
  text("Click para pintar", imagen.width + 10, 40);
  text("Tamaño: " + tamaño, imagen.width + 10, 60);
  text("+ / - para cambiar tamaño", imagen.width + 10, 80);
  
  // Muestra de color
  fill(colorPincel);
  rect(imagen.width + 10, 100, 50, 30);
}

void mouseDragged() {
  if (mouseX < imagen.width && mouseY < imagen.height) {
    // Pintar en la imagen
    imagen.loadPixels();
    
    for (int x = -tamaño/2; x < tamaño/2; x++) {
      for (int y = -tamaño/2; y < tamaño/2; y++) {
        int px = mouseX + x;
        int py = mouseY + y;
        
        if (px >= 0 && px < imagen.width && py >= 0 && py < imagen.height) {
          float d = dist(0, 0, x, y);
          if (d < tamaño/2) {
            imagen.pixels[py * imagen.width + px] = colorPincel;
          }
        }
      }
    }
    
    imagen.updatePixels();
  }
}

void keyPressed() {
  if (key == '+') {
    tamaño = min(50, tamaño + 5);
  } else if (key == '-') {
    tamaño = max(5, tamaño - 5);
  } else if (key == 'r') {
    colorPincel = color(255, 0, 0);
  } else if (key == 'g') {
    colorPincel = color(0, 255, 0);
  } else if (key == 'b') {
    colorPincel = color(0, 0, 255);
  } else if (key == 's') {
    imagen.save("imagen_editada.png");
  }
}
```

## Proyectos sugeridos:

1. **Mosaico fotográfico**: Crear un mosaico usando múltiples imágenes pequeñas
2. **Detector de bordes**: Implementar algoritmos de detección de bordes
3. **Galería interactiva**: Sistema de navegación por imágenes con efectos
4. **Generador de texturas**: Crear texturas procedimentales
5. **Arte ASCII**: Convertir imágenes a arte ASCII

---

*Capítulo actualizado desde Cerebro Digital*
