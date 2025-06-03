# 10 Arrays

## Introducción a los Arrays en Processing

Los arrays (arreglos) nos permiten almacenar múltiples valores del mismo tipo en una sola variable, facilitando el manejo de grandes cantidades de datos.

### Contenido del capítulo:

- 10.1 ¿Qué son los arrays?
- 10.2 Declaración e inicialización
- 10.3 Acceso a elementos
- 10.4 Arrays y bucles
- 10.5 Arrays bidimensionales
- 10.6 ArrayList (listas dinámicas)

### Objetivos de aprendizaje:

- Entender el concepto de array
- Declarar e inicializar arrays
- Manipular elementos de arrays
- Usar arrays en animaciones y visualizaciones

## 10.1 ¿Qué son los arrays?

Un array es una colección ordenada de elementos del mismo tipo. En lugar de tener:

```processing
float pelotaX1 = 50;
float pelotaX2 = 100;
float pelotaX3 = 150;
float pelotaY1 = 30;
float pelotaY2 = 60;
float pelotaY3 = 90;
```

Podemos usar:

```processing
float[] pelotasX = {50, 100, 150};
float[] pelotasY = {30, 60, 90};
```

## 10.2 Declaración e inicialización

### Formas de declarar arrays:

```processing
// Declaración con tamaño específico
int[] numeros = new int[5];

// Declaración con valores iniciales
int[] numeros = {10, 20, 30, 40, 50};

// Declaración y asignación separadas
int[] numeros;
numeros = new int[5];

// Con diferentes tipos de datos
float[] coordenadas = new float[100];
String[] nombres = {"Ana", "Luis", "María"};
color[] colores = {color(255,0,0), color(0,255,0), color(0,0,255)};
```

## 10.3 Acceso a elementos

```processing
int[] numeros = {10, 20, 30, 40, 50};

void setup() {
  // Acceder a elementos (índice empieza en 0)
  println(numeros[0]);  // Imprime: 10
  println(numeros[4]);  // Imprime: 50
  
  // Modificar elementos
  numeros[2] = 99;
  println(numeros[2]);  // Imprime: 99
  
  // Longitud del array
  println("Longitud: " + numeros.length);  // Imprime: 5
}
```

### Ejemplo visual básico:
```processing
float[] circulos;
int numCirculos = 10;

void setup() {
  size(600, 200);
  circulos = new float[numCirculos];
  
  // Inicializar posiciones
  for (int i = 0; i < numCirculos; i++) {
    circulos[i] = i * 60 + 30;
  }
}

void draw() {
  background(255);
  
  // Dibujar círculos
  for (int i = 0; i < numCirculos; i++) {
    ellipse(circulos[i], height/2, 40, 40);
  }
}
```

## 10.4 Arrays y bucles

### Animación con arrays:
```processing
float[] x = new float[20];
float[] y = new float[20];
float[] velocidadX = new float[20];
float[] velocidadY = new float[20];

void setup() {
  size(600, 400);
  
  // Inicializar arrays
  for (int i = 0; i < x.length; i++) {
    x[i] = random(width);
    y[i] = random(height);
    velocidadX[i] = random(-3, 3);
    velocidadY[i] = random(-3, 3);
  }
}

void draw() {
  background(0);
  
  // Actualizar y dibujar pelotas
  for (int i = 0; i < x.length; i++) {
    // Mover
    x[i] += velocidadX[i];
    y[i] += velocidadY[i];
    
    // Rebotar
    if (x[i] < 0 || x[i] > width) {
      velocidadX[i] *= -1;
    }
    if (y[i] < 0 || y[i] > height) {
      velocidadY[i] *= -1;
    }
    
    // Dibujar
    fill(255);
    ellipse(x[i], y[i], 20, 20);
  }
}
```

### Visualización de datos:
```processing
int[] datos = {23, 45, 67, 89, 12, 34, 56, 78, 90, 11};

void setup() {
  size(500, 300);
}

void draw() {
  background(255);
  
  float ancho = width / float(datos.length);
  
  // Dibujar gráfico de barras
  for (int i = 0; i < datos.length; i++) {
    float altura = map(datos[i], 0, 100, 0, height-50);
    
    fill(100, 150, 255);
    rect(i * ancho, height - altura, ancho - 2, altura);
    
    // Etiquetas
    fill(0);
    textAlign(CENTER);
    text(datos[i], i * ancho + ancho/2, height - altura - 5);
  }
}
```

### Array de colores:
```processing
color[] paleta = {
  color(255, 100, 100),
  color(100, 255, 100),
  color(100, 100, 255),
  color(255, 255, 100),
  color(255, 100, 255),
  color(100, 255, 255)
};

void setup() {
  size(600, 200);
}

void draw() {
  background(255);
  
  float ancho = width / float(paleta.length);
  
  for (int i = 0; i < paleta.length; i++) {
    fill(paleta[i]);
    rect(i * ancho, 0, ancho, height);
  }
}
```

## 10.5 Arrays bidimensionales

### Matriz de números:
```processing
int[][] matriz = {
  {1, 2, 3, 4},
  {5, 6, 7, 8},
  {9, 10, 11, 12}
};

void setup() {
  // Imprimir matriz
  for (int fila = 0; fila < matriz.length; fila++) {
    for (int col = 0; col < matriz[fila].length; col++) {
      print(matriz[fila][col] + " ");
    }
    println();
  }
}
```

### Grid interactivo:
```processing
int[][] grid;
int filas = 20;
int columnas = 30;
int tamaño = 20;

void setup() {
  size(600, 400);
  grid = new int[filas][columnas];
  
  // Inicializar grid con valores aleatorios
  for (int i = 0; i < filas; i++) {
    for (int j = 0; j < columnas; j++) {
      grid[i][j] = int(random(2)); // 0 o 1
    }
  }
}

void draw() {
  background(255);
  
  // Dibujar grid
  for (int i = 0; i < filas; i++) {
    for (int j = 0; j < columnas; j++) {
      if (grid[i][j] == 1) {
        fill(0);
      } else {
        fill(255);
      }
      rect(j * tamaño, i * tamaño, tamaño, tamaño);
    }
  }
}

void mousePressed() {
  // Cambiar estado de la celda clickeada
  int fila = mouseY / tamaño;
  int col = mouseX / tamaño;
  
  if (fila >= 0 && fila < filas && col >= 0 && col < columnas) {
    grid[fila][col] = 1 - grid[fila][col]; // Alternar 0/1
  }
}
```

## 10.6 ArrayList (listas dinámicas)

### Diferencia con arrays normales:
```processing
// Array normal - tamaño fijo
float[] arrayNormal = new float[10];

// ArrayList - tamaño dinámico
ArrayList<Float> lista = new ArrayList<Float>();
```

### Ejemplo con partículas:
```processing
ArrayList<PVector> particulas;

void setup() {
  size(600, 400);
  particulas = new ArrayList<PVector>();
}

void draw() {
  background(0);
  
  // Añadir partícula en posición del mouse
  if (mousePressed) {
    particulas.add(new PVector(mouseX, mouseY));
  }
  
  // Dibujar todas las partículas
  for (int i = 0; i < particulas.size(); i++) {
    PVector p = particulas.get(i);
    fill(255);
    ellipse(p.x, p.y, 5, 5);
  }
  
  // Mostrar número de partículas
  fill(255);
  text("Partículas: " + particulas.size(), 10, 20);
}

void keyPressed() {
  if (key == ' ') {
    particulas.clear(); // Limpiar todas las partículas
  }
}
```

### Sistema de partículas completo:
```processing
class Particula {
  PVector posicion;
  PVector velocidad;
  float vida;
  
  Particula(float x, float y) {
    posicion = new PVector(x, y);
    velocidad = PVector.random2D();
    velocidad.mult(random(1, 3));
    vida = 255;
  }
  
  void actualizar() {
    posicion.add(velocidad);
    vida -= 2;
  }
  
  void dibujar() {
    fill(255, vida);
    ellipse(posicion.x, posicion.y, 8, 8);
  }
  
  boolean estaMuerta() {
    return vida <= 0;
  }
}

ArrayList<Particula> sistema;

void setup() {
  size(600, 400);
  sistema = new ArrayList<Particula>();
}

void draw() {
  background(0);
  
  // Añadir nuevas partículas
  if (frameCount % 3 == 0) {
    sistema.add(new Particula(mouseX, mouseY));
  }
  
  // Actualizar sistema
  for (int i = sistema.size()-1; i >= 0; i--) {
    Particula p = sistema.get(i);
    p.actualizar();
    p.dibujar();
    
    // Remover partículas muertas
    if (p.estaMuerta()) {
      sistema.remove(i);
    }
  }
  
  // Información
  fill(255);
  text("Partículas activas: " + sistema.size(), 10, 20);
}
```

### Operaciones con ArrayList:
```processing
ArrayList<String> lista = new ArrayList<String>();

void setup() {
  // Añadir elementos
  lista.add("Hola");
  lista.add("Mundo");
  lista.add("Processing");
  
  // Insertar en posición específica
  lista.add(1, "Querido");
  
  // Obtener elemento
  String elemento = lista.get(0);
  
  // Modificar elemento
  lista.set(2, "Nuevo");
  
  // Remover elemento
  lista.remove(1);
  
  // Tamaño
  int tamaño = lista.size();
  
  // Verificar si contiene
  boolean contiene = lista.contains("Hola");
  
  // Limpiar todo
  // lista.clear();
  
  // Imprimir todos
  for (String s : lista) {
    println(s);
  }
}
```

## Ejercicios prácticos:

1. **Lluvia**: Array de gotas que caen
2. **Ondas**: Array para simular ondas en agua
3. **Juego de memoria**: Array para cartas
4. **Visualizador de música**: Array para barras de frecuencia
5. **Boids**: Sistema de partículas que se comportan como pájaros

### Ejercicio: Sistema de ondas
```processing
float[] ondas;
int numPuntos = 100;

void setup() {
  size(800, 400);
  ondas = new float[numPuntos];
}

void draw() {
  background(0);
  
  // Calcular ondas
  for (int i = 0; i < numPuntos; i++) {
    float x = map(i, 0, numPuntos-1, 0, TWO_PI * 3);
    ondas[i] = sin(x + frameCount * 0.1) * 100;
  }
  
  // Dibujar ondas
  stroke(255);
  strokeWeight(2);
  noFill();
  
  beginShape();
  for (int i = 0; i < numPuntos; i++) {
    float x = map(i, 0, numPuntos-1, 0, width);
    float y = height/2 + ondas[i];
    vertex(x, y);
  }
  endShape();
}
```

---

*Capítulo actualizado desde Cerebro Digital*
