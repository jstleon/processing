# 05 Interactivo

## Creando Programas que Responden al Usuario

La interactividad es lo que hace que nuestros programas cobren vida. En este capítulo aprenderemos a crear aplicaciones que respondan a las acciones del usuario, como el movimiento del ratón, clics y pulsaciones de teclas.

### Eventos del Ratón

#### Variables del Ratón

Processing proporciona variables automáticas para trabajar con el ratón:

```processing
mouseX     // Posición X actual del ratón
mouseY     // Posición Y actual del ratón
pmouseX    // Posición X anterior del ratón
pmouseY    // Posición Y anterior del ratón
mousePressed  // true si algún botón está presionado
mouseButton   // LEFT, RIGHT, o CENTER (botón presionado)
```

#### Ejemplo: Seguir el Ratón
```processing
void setup() {
  size(600, 400);
}

void draw() {
  background(255);
  
  // Círculo sigue al ratón
  fill(255, 0, 0);
  ellipse(mouseX, mouseY, 50, 50);
  
  // Mostrar coordenadas
  fill(0);
  text("X: " + mouseX + " Y: " + mouseY, 10, 20);
}
```

### Funciones de Eventos del Ratón

#### `mousePressed()`
Se ejecuta una vez cuando se presiona un botón del ratón:
```processing
void mousePressed() {
  println("¡Ratón presionado!");
  println("Posición: " + mouseX + ", " + mouseY);
  
  // Cambiar color de fondo al hacer clic
  background(random(255), random(255), random(255));
}
```

#### `mouseReleased()`
Se ejecuta cuando se suelta un botón del ratón:
```processing
void mouseReleased() {
  println("Ratón liberado");
}
```

#### `mouseMoved()`
Se ejecuta cuando el ratón se mueve (sin botones presionados):
```processing
void mouseMoved() {
  println("Ratón moviéndose: " + mouseX + ", " + mouseY);
}
```

#### `mouseDragged()`
Se ejecuta cuando el ratón se mueve con un botón presionado:
```processing
void mouseDragged() {
  // Dibujar línea desde posición anterior a actual
  line(pmouseX, pmouseY, mouseX, mouseY);
}
```

### Ejemplos Prácticos con Ratón

#### Ejemplo 1: Programa de Dibujo Simple
```processing
void setup() {
  size(800, 600);
  background(255);
  strokeWeight(3);
}

void draw() {
  // No necesitamos código en draw() para este ejemplo
}

void mouseDragged() {
  // Dibujar cuando arrastramos el ratón
  stroke(0);
  line(pmouseX, pmouseY, mouseX, mouseY);
}

void keyPressed() {
  if (key == 'c' || key == 'C') {
    background(255);  // Limpiar pantalla con 'C'
  }
}
```

#### Ejemplo 2: Botón Interactivo
```processing
boolean botonPresionado = false;

void setup() {
  size(400, 300);
}

void draw() {
  background(220);
  
  // Verificar si el ratón está sobre el botón
  boolean sobreBoton = (mouseX > 150 && mouseX < 250 && 
                        mouseY > 100 && mouseY < 150);
  
  // Cambiar color según estado
  if (botonPresionado) {
    fill(100, 255, 100);  // Verde cuando presionado
  } else if (sobreBoton) {
    fill(255, 255, 100);  // Amarillo cuando hover
  } else {
    fill(200);            // Gris normal
  }
  
  // Dibujar botón
  rect(150, 100, 100, 50);
  
  // Texto del botón
  fill(0);
  textAlign(CENTER, CENTER);
  text("¡Clic!", 200, 125);
}

void mousePressed() {
  // Verificar si se hizo clic en el botón
  if (mouseX > 150 && mouseX < 250 && mouseY > 100 && mouseY < 150) {
    botonPresionado = !botonPresionado;  // Alternar estado
  }
}
```

### Eventos del Teclado

#### Variables del Teclado
```processing
key        // Carácter de la tecla presionada
keyCode    // Código de teclas especiales (flechas, etc.)
keyPressed // true si alguna tecla está presionada
```

#### `keyPressed()`
Se ejecuta una vez cuando se presiona una tecla:
```processing
void keyPressed() {
  println("Tecla presionada: " + key);
  
  if (key == 'r' || key == 'R') {
    background(255, 0, 0);  // Fondo rojo
  }
  if (key == 'g' || key == 'G') {
    background(0, 255, 0);  // Fondo verde
  }
  if (key == 'b' || key == 'B') {
    background(0, 0, 255);  // Fondo azul
  }
}
```

#### Teclas Especiales
```processing
void keyPressed() {
  if (key == CODED) {  // Para teclas especiales
    if (keyCode == UP) {
      println("Flecha arriba");
    }
    if (keyCode == DOWN) {
      println("Flecha abajo");
    }
    if (keyCode == LEFT) {
      println("Flecha izquierda");
    }
    if (keyCode == RIGHT) {
      println("Flecha derecha");
    }
  }
}
```

### Ejemplos Prácticos con Teclado

#### Ejemplo 3: Control de Objeto con Teclado
```processing
float posX = 200;
float posY = 200;
float velocidad = 5;

void setup() {
  size(500, 500);
}

void draw() {
  background(220);
  
  // Dibujar objeto controlable
  fill(255, 0, 0);
  ellipse(posX, posY, 30, 30);
  
  // Instrucciones
  fill(0);
  text("Usa WASD o flechas para mover", 10, 20);
}

void keyPressed() {
  // Controles WASD
  if (key == 'w' || key == 'W' || keyCode == UP) {
    posY -= velocidad;
  }
  if (key == 's' || key == 'S' || keyCode == DOWN) {
    posY += velocidad;
  }
  if (key == 'a' || key == 'A' || keyCode == LEFT) {
    posX -= velocidad;
  }
  if (key == 'd' || key == 'D' || keyCode == RIGHT) {
    posX += velocidad;
  }
  
  // Mantener objeto dentro de la pantalla
  posX = constrain(posX, 15, width - 15);
  posY = constrain(posY, 15, height - 15);
}
```

### Combinando Ratón y Teclado

#### Ejemplo 4: Herramienta de Dibujo Avanzada
```processing
color colorActual = color(0);
float grosorActual = 1;

void setup() {
  size(800, 600);
  background(255);
}

void draw() {
  // Mostrar información en pantalla
  fill(255);
  rect(0, 0, width, 30);  // Barra de información
  
  fill(0);
  text("Color actual: ", 10, 20);
  fill(colorActual);
  rect(90, 10, 20, 15);
  
  fill(0);
  text("Grosor: " + grosorActual, 130, 20);
  text("R=Rojo G=Verde B=Azul SPACE=Borrar", 200, 20);
}

void mouseDragged() {
  // Dibujar solo si no estamos en la barra de información
  if (mouseY > 30) {
    stroke(colorActual);
    strokeWeight(grosorActual);
    line(pmouseX, pmouseY, mouseX, mouseY);
  }
}

void keyPressed() {
  // Cambiar colores
  if (key == 'r' || key == 'R') {
    colorActual = color(255, 0, 0);  // Rojo
  }
  if (key == 'g' || key == 'G') {
    colorActual = color(0, 255, 0);  // Verde
  }
  if (key == 'b' || key == 'B') {
    colorActual = color(0, 0, 255);  // Azul
  }
  if (key == 'k' || key == 'K') {
    colorActual = color(0);          // Negro
  }
  
  // Cambiar grosor
  if (key == '1') grosorActual = 1;
  if (key == '2') grosorActual = 3;
  if (key == '3') grosorActual = 5;
  if (key == '4') grosorActual = 8;
  
  // Limpiar pantalla
  if (key == ' ') {
    background(255);
  }
}
```

### Detección de Colisiones

#### Ejemplo 5: Clic en Objetos
```processing
ArrayList<PVector> circulos = new ArrayList<PVector>();

void setup() {
  size(600, 400);
  
  // Crear algunos círculos
  for (int i = 0; i < 5; i++) {
    circulos.add(new PVector(random(width), random(height)));
  }
}

void draw() {
  background(220);
  
  // Dibujar círculos
  for (int i = 0; i < circulos.size(); i++) {
    PVector pos = circulos.get(i);
    
    // Verificar si el ratón está sobre este círculo
    float distancia = dist(mouseX, mouseY, pos.x, pos.y);
    
    if (distancia < 25) {
      fill(255, 100, 100);  // Rojo si el ratón está encima
    } else {
      fill(100, 100, 255);  // Azul normal
    }
    
    ellipse(pos.x, pos.y, 50, 50);
  }
  
  // Instrucciones
  fill(0);
  text("Haz clic en los círculos para eliminarlos", 10, 20);
}

void mousePressed() {
  // Verificar clic en círculos (recorrer hacia atrás para evitar problemas)
  for (int i = circulos.size() - 1; i >= 0; i--) {
    PVector pos = circulos.get(i);
    float distancia = dist(mouseX, mouseY, pos.x, pos.y);
    
    if (distancia < 25) {
      circulos.remove(i);  // Eliminar círculo
      break;               // Salir del bucle
    }
  }
}
```

### Ejercicios de Código Incluidos

Los archivos en la carpeta `code_05` incluyen:

- **Eventos básicos**: Respuestas a ratón y teclado
- **Interfaces simples**: Botones y controles
- **Juegos básicos**: Interacción en tiempo real
- **Herramientas creativas**: Programas de dibujo
- **Detección de colisiones**: Interacción con objetos

### Consejos para la Interactividad

#### 1. Feedback Visual
Siempre proporciona retroalimentación visual al usuario:
```processing
// Cambiar cursor cuando esté sobre un botón
if (sobreBoton) {
  cursor(HAND);
} else {
  cursor(ARROW);
}
```

#### 2. Estados Claros
Usa variables boolean para mantener estados claros:
```processing
boolean menuAbierto = false;
boolean juegoIniciado = false;
boolean modoEdicion = true;
```

#### 3. Límites y Validación
Siempre valida las entradas del usuario:
```processing
// Mantener objeto dentro de límites
posX = constrain(posX, 0, width);
posY = constrain(posY, 0, height);
```

#### 4. Múltiples Controles
Permite diferentes formas de hacer lo mismo:
```processing
// Múltiples teclas para la misma acción
if (key == 'w' || key == 'W' || keyCode == UP) {
  // Mover hacia arriba
}
```

---

**Capítulo anterior**: [04 Variables](../04%20Variables) | **Siguiente capítulo**: [06 Medios](../06%20Medios)
