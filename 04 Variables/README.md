# 04 Variables

## Almacenamiento y Manipulación de Datos

Las variables son contenedores que nos permiten almacenar y manipular información en nuestros programas. En este capítulo aprenderemos a usar variables para crear programas más dinámicos e interactivos.

### ¿Qué es una Variable?

Una variable es un espacio en la memoria del computador que tiene:
- **Nombre**: Identificador único
- **Tipo**: Clase de dato que almacena
- **Valor**: La información actual que contiene

Piensa en una variable como una caja etiquetada donde guardas algo específico.

### Tipos de Datos en Processing

#### Números Enteros (`int`)
```processing
int edad = 25;
int puntos = 0;
int ancho = 400;
```

#### Números Decimales (`float`)
```processing
float pi = 3.14159;
float velocidad = 2.5;
float posicionX = 100.0;
```

#### Texto (`String`)
```processing
String nombre = "Processing";
String mensaje = "Hola Mundo";
String archivo = "imagen.jpg";
```

#### Verdadero/Falso (`boolean`)
```processing
boolean activo = true;
boolean visible = false;
boolean gameOver = false;
```

#### Colores (`color`)
```processing
color rojo = color(255, 0, 0);
color azul = color(0, 0, 255);
color gris = color(128);
```

### Declaración y Asignación

#### Declarar una Variable
```processing
int miNumero;        // Declara sin valor inicial
float miDecimal;     // Declara sin valor inicial
```

#### Asignar un Valor
```processing
miNumero = 42;       // Asigna el valor 42
miDecimal = 3.14;    // Asigna el valor 3.14
```

#### Declarar y Asignar al Mismo Tiempo
```processing
int edad = 25;       // Declara y asigna en una línea
float altura = 1.75; // Declara y asigna en una línea
```

### Variables del Sistema

Processing incluye variables predefinidas muy útiles:

#### Variables de Dimensiones
```processing
size(800, 600);
println(width);      // Imprime: 800
println(height);     // Imprime: 600
```

#### Variables del Ratón
```processing
void draw() {
  println(mouseX);   // Posición X del ratón
  println(mouseY);   // Posición Y del ratón
  
  ellipse(mouseX, mouseY, 20, 20);  // Círculo sigue al ratón
}
```

#### Variables del Teclado
```processing
void keyPressed() {
  println(key);      // Tecla presionada
  println(keyCode);  // Código de la tecla
}
```

#### Variables de Tiempo
```processing
void draw() {
  println(frameCount);  // Número de frames desde el inicio
  println(millis());    // Milisegundos desde el inicio
}
```

### Operaciones con Variables

#### Operaciones Aritméticas
```processing
int a = 10;
int b = 5;

int suma = a + b;        // 15
int resta = a - b;       // 5
int multiplicacion = a * b; // 50
int division = a / b;    // 2
int modulo = a % b;      // 0 (resto de la división)
```

#### Incremento y Decremento
```processing
int contador = 0;

contador++;              // Incrementa en 1 (igual a contador = contador + 1)
contador--;              // Decrementa en 1
contador += 5;           // Incrementa en 5
contador -= 3;           // Decrementa en 3
contador *= 2;           // Multiplica por 2
```

### Alcance de las Variables

#### Variables Globales
Se declaran fuera de funciones y son accesibles en todo el programa:
```processing
int posX = 100;          // Variable global
int posY = 100;          // Variable global

void setup() {
  size(400, 400);
}

void draw() {
  background(255);
  ellipse(posX, posY, 50, 50);  // Usa variables globales
  posX++;                       // Modifica variable global
}
```

#### Variables Locales
Se declaran dentro de funciones y solo existen en esa función:
```processing
void draw() {
  int velocidad = 2;       // Variable local
  
  // velocidad solo existe dentro de draw()
}
```

### Ejemplos Prácticos

#### Ejemplo 1: Círculo en Movimiento
```processing
float x = 0;             // Posición inicial
float velocidad = 2;     // Velocidad de movimiento

void setup() {
  size(800, 400);
}

void draw() {
  background(200);
  
  // Dibujar círculo
  ellipse(x, height/2, 50, 50);
  
  // Mover círculo
  x = x + velocidad;
  
  // Reiniciar cuando sale de pantalla
  if (x > width) {
    x = 0;
  }
}
```

#### Ejemplo 2: Cambiando Colores
```processing
int valorRojo = 0;
int incremento = 1;

void setup() {
  size(400, 400);
}

void draw() {
  background(valorRojo, 0, 0);
  
  // Cambiar el valor del rojo
  valorRojo = valorRojo + incremento;
  
  // Invertir dirección cuando llega a los límites
  if (valorRojo >= 255 || valorRojo <= 0) {
    incremento = incremento * -1;
  }
}
```

#### Ejemplo 3: Múltiples Variables
```processing
float x1, y1, x2, y2;    // Posiciones de dos círculos
float vel1, vel2;        // Velocidades

void setup() {
  size(600, 400);
  
  // Inicializar valores
  x1 = 0;
  y1 = height * 0.3;
  vel1 = 3;
  
  x2 = 0;
  y2 = height * 0.7;
  vel2 = 1.5;
}

void draw() {
  background(255);
  
  // Dibujar círculos
  fill(255, 0, 0);
  ellipse(x1, y1, 30, 30);
  
  fill(0, 0, 255);
  ellipse(x2, y2, 30, 30);
  
  // Mover círculos
  x1 += vel1;
  x2 += vel2;
  
  // Reiniciar posiciones
  if (x1 > width) x1 = 0;
  if (x2 > width) x2 = 0;
}
```

### Ejercicios de Código Incluidos

Los archivos en la carpeta `code_04` exploran:

- **Variables básicas**: Declaración y uso
- **Variables del sistema**: mouseX, mouseY, width, height
- **Operaciones**: Suma, resta, multiplicación
- **Animaciones simples**: Usando variables para movimiento
- **Interactividad**: Variables que responden al usuario

### Buenas Prácticas

#### Nombres de Variables
```processing
// ✅ Buenos nombres (descriptivos)
int posicionX;
float velocidadBala;
boolean juegoTerminado;
color colorFondo;

// ❌ Malos nombres (no descriptivos)
int x;
float v;
boolean b;
color c;
```

#### Inicialización
```processing
// ✅ Siempre inicializar variables
int contador = 0;
float velocidad = 1.0;

// ❌ Variables sin inicializar pueden causar errores
int contador;     // Valor indefinido
```

#### Constantes
Para valores que no cambian, usa `final`:
```processing
final int ANCHO_PANTALLA = 800;
final float PI = 3.14159;
final color ROJO = color(255, 0, 0);
```

### Debugging con Variables

#### Imprimir Valores
```processing
int miVariable = 42;
println("El valor es: " + miVariable);
```

#### Mostrar en Pantalla
```processing
int puntos = 100;

void draw() {
  background(255);
  
  fill(0);
  text("Puntos: " + puntos, 10, 20);
}
```

---

**Capítulo anterior**: [03 Dibujo](../03%20Dibujo) | **Siguiente capítulo**: [05 Interactivo](../05%20Interactivo)
