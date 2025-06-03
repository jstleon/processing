# 08 Funciones

## Introducción a las Funciones en Processing

Las funciones son bloques de código reutilizables que nos permiten organizar y modularizar nuestros programas.

### Contenido del capítulo:

- 8.1 ¿Qué son las funciones?
- 8.2 Funciones sin parámetros
- 8.3 Funciones con parámetros
- 8.4 Funciones que devuelven valores
- 8.5 Scope (ámbito) de las variables
- 8.6 Ejemplos prácticos

### Objetivos de aprendizaje:

- Entender el concepto de función
- Crear funciones personalizadas
- Usar parámetros y valores de retorno
- Organizar código de manera eficiente

## 8.1 ¿Qué son las funciones?

Una función es un bloque de código que realiza una tarea específica. Ya hemos usado funciones como `setup()`, `draw()`, `ellipse()`, etc.

### Sintaxis básica:
```processing
void nombreFuncion() {
  // código a ejecutar
}
```

## 8.2 Funciones sin parámetros

### Ejemplo: Dibujar una casa
```processing
void setup() {
  size(400, 300);
}

void draw() {
  background(135, 206, 235); // Cielo azul
  
  dibujarSol();
  dibujarCasa();
  dibujarArbol();
}

void dibujarSol() {
  fill(255, 255, 0);
  ellipse(350, 50, 60, 60);
}

void dibujarCasa() {
  // Base de la casa
  fill(200, 100, 50);
  rect(150, 150, 100, 80);
  
  // Techo
  fill(150, 50, 50);
  triangle(140, 150, 200, 100, 260, 150);
  
  // Puerta
  fill(100, 50, 25);
  rect(180, 190, 20, 40);
  
  // Ventana
  fill(200, 200, 255);
  rect(160, 170, 15, 15);
}

void dibujarArbol() {
  // Tronco
  fill(101, 67, 33);
  rect(80, 180, 20, 50);
  
  // Copa
  fill(34, 139, 34);
  ellipse(90, 180, 50, 50);
}
```

## 8.3 Funciones con parámetros

Los parámetros nos permiten hacer las funciones más flexibles:

```processing
void setup() {
  size(400, 300);
}

void draw() {
  background(255);
  
  // Dibujar varias casas en diferentes posiciones
  dibujarCasa(50, 200);
  dibujarCasa(150, 180);
  dibujarCasa(250, 220);
}

void dibujarCasa(float x, float y) {
  // Base
  fill(200, 100, 50);
  rect(x, y, 80, 60);
  
  // Techo
  fill(150, 50, 50);
  triangle(x-10, y, x+40, y-40, x+90, y);
  
  // Puerta
  fill(100, 50, 25);
  rect(x+30, y+20, 15, 40);
}
```

### Función con múltiples parámetros:
```processing
void dibujarEstrella(float x, float y, float tamaño, color c) {
  fill(c);
  pushMatrix();
  translate(x, y);
  
  beginShape();
  for (int i = 0; i < 10; i++) {
    float angulo = TWO_PI / 10 * i;
    float radio = (i % 2 == 0) ? tamaño : tamaño * 0.5;
    float px = cos(angulo) * radio;
    float py = sin(angulo) * radio;
    vertex(px, py);
  }
  endShape(CLOSE);
  
  popMatrix();
}

void draw() {
  background(0);
  
  dibujarEstrella(100, 100, 30, color(255, 255, 0));
  dibujarEstrella(200, 150, 20, color(255, 255, 255));
  dibujarEstrella(300, 80, 25, color(255, 200, 100));
}
```

## 8.4 Funciones que devuelven valores

### Función que calcula distancia:
```processing
float calcularDistancia(float x1, float y1, float x2, float y2) {
  float dx = x2 - x1;
  float dy = y2 - y1;
  return sqrt(dx*dx + dy*dy);
}

void setup() {
  size(400, 300);
}

void draw() {
  background(255);
  
  float distancia = calcularDistancia(mouseX, mouseY, width/2, height/2);
  
  // Cambiar color según distancia
  if (distancia < 50) {
    fill(255, 0, 0);
  } else if (distancia < 100) {
    fill(255, 255, 0);
  } else {
    fill(0, 255, 0);
  }
  
  ellipse(width/2, height/2, 100, 100);
  
  // Mostrar distancia
  fill(0);
  text("Distancia: " + int(distancia), 10, 20);
}
```

### Función que devuelve un color:
```processing
color obtenerColorTemperatura(float temp) {
  if (temp < 0) {
    return color(0, 100, 255);     // Azul frío
  } else if (temp < 20) {
    return color(100, 200, 255);   // Azul claro
  } else if (temp < 30) {
    return color(255, 255, 0);     // Amarillo
  } else {
    return color(255, 100, 0);     // Rojo caliente
  }
}
```

## 8.5 Scope (ámbito) de las variables

```processing
int variableGlobal = 10;  // Visible en todo el programa

void setup() {
  size(400, 300);
  int variableLocal = 20;  // Solo visible en setup()
  println("Global: " + variableGlobal);
  println("Local: " + variableLocal);
}

void draw() {
  // variableLocal no existe aquí
  println("Global en draw: " + variableGlobal);
}

void miFuncion() {
  int otraLocal = 30;  // Solo visible en miFuncion()
  variableGlobal = 50;  // Puedo modificar la global
}
```

## 8.6 Ejercicios prácticos

### Ejercicio 1: Sistema de partículas
```processing
void setup() {
  size(400, 300);
}

void draw() {
  background(0);
  
  for (int i = 0; i < 10; i++) {
    float x = random(width);
    float y = random(height);
    float tamaño = random(5, 20);
    dibujarParticula(x, y, tamaño);
  }
}

void dibujarParticula(float x, float y, float tamaño) {
  fill(255, random(100, 255), random(100, 255));
  noStroke();
  ellipse(x, y, tamaño, tamaño);
  
  // Brillo
  fill(255, 100);
  ellipse(x-tamaño*0.2, y-tamaño*0.2, tamaño*0.3, tamaño*0.3);
}
```

### Ejercicio 2: Calculadora de formas
```processing
float calcularAreaCirculo(float radio) {
  return PI * radio * radio;
}

float calcularAreaRectangulo(float ancho, float alto) {
  return ancho * alto;
}

float calcularAreaTriangulo(float base, float altura) {
  return (base * altura) / 2;
}

void setup() {
  println("Área círculo (r=5): " + calcularAreaCirculo(5));
  println("Área rectángulo (10x8): " + calcularAreaRectangulo(10, 8));
  println("Área triángulo (6x4): " + calcularAreaTriangulo(6, 4));
}
```

## Ejercicios para practicar:

1. **Jardín de flores**: Crear una función que dibuje flores en diferentes posiciones
2. **Calculadora gráfica**: Funciones para operaciones matemáticas
3. **Sistema de menús**: Funciones para diferentes pantallas
4. **Generador de patrones**: Funciones que crean diferentes diseños

---

*Capítulo actualizado desde Cerebro Digital*
