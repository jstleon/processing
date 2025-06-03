# 08 Funciones

## Modularización y Reutilización del Código

Las funciones son bloques de código reutilizables que nos permiten organizar nuestros programas de manera más eficiente. En este capítulo aprenderemos a crear nuestras propias funciones para hacer el código más limpio, modular y fácil de mantener.

### ¿Qué son las Funciones?

Una función es un bloque de código que:
- Realiza una tarea específica
- Puede recibir datos de entrada (parámetros)
- Puede devolver un resultado
- Se puede usar múltiples veces

**Ventajas de usar funciones:**
- ✅ **Reutilización**: Escribir una vez, usar muchas veces
- ✅ **Organización**: Código más limpio y estructurado
- ✅ **Mantenimiento**: Fácil de modificar y corregir
- ✅ **Legibilidad**: Código más fácil de entender

### Funciones que Ya Conoces

Ya has estado usando funciones de Processing:
```processing
size(400, 300);        // Función con parámetros
background(255);       // Función con un parámetro
ellipse(50, 50, 30, 30); // Función con múltiples parámetros
random(100);           // Función que devuelve un valor
```

Y también has creado funciones:
```processing
void setup() {         // Función sin parámetros ni retorno
  // Tu código aquí
}

void draw() {          // Función que se ejecuta repetidamente
  // Tu código aquí
}
```

### Creando Funciones Simples

#### Función Sin Parámetros
```processing
void setup() {
  size(600, 400);
}

void draw() {
  background(255);
  
  dibujarCasa();  // Llamar nuestra función
}

void dibujarCasa() {
  // Cuerpo de la casa
  fill(139, 69, 19);
  rect(200, 200, 100, 100);
  
  // Techo
  fill(255, 0, 0);
  triangle(175, 200, 250, 150, 325, 200);
  
  // Puerta
  fill(101, 67, 33);
  rect(230, 250, 20, 50);
  
  // Ventana
  fill(173, 216, 230);
  rect(210, 220, 15, 15);
}
```

#### Función Con Parámetros
```processing
void setup() {
  size(800, 600);
}

void draw() {
  background(255);
  
  // Dibujar múltiples casas en diferentes posiciones
  dibujarCasa(100, 300);
  dibujarCasa(300, 250);
  dibujarCasa(500, 350);
}

void dibujarCasa(float x, float y) {
  // Cuerpo de la casa
  fill(139, 69, 19);
  rect(x, y, 100, 100);
  
  // Techo
  fill(255, 0, 0);
  triangle(x - 25, y, x + 50, y - 50, x + 125, y);
  
  // Puerta
  fill(101, 67, 33);
  rect(x + 30, y + 50, 20, 50);
  
  // Ventana
  fill(173, 216, 230);
  rect(x + 10, y + 20, 15, 15);
}
```

### Funciones que Devuelven Valores

#### Función que Devuelve un Número
```processing
void setup() {
  size(400, 300);
}

void draw() {
  background(255);
  
  // Usar función que calcula distancia
  float distancia = calcularDistancia(mouseX, mouseY, width/2, height/2);
  
  // Mostrar resultado
  fill(0);
  text("Distancia al centro: " + nf(distancia, 0, 1), 10, 30);
  
  // Cambiar color según distancia
  if (distancia < 50) {
    fill(255, 0, 0);
  } else if (distancia < 100) {
    fill(255, 255, 0);
  } else {
    fill(0, 255, 0);
  }
  
  ellipse(width/2, height/2, 100, 100);
}

float calcularDistancia(float x1, float y1, float x2, float y2) {
  float dx = x2 - x1;
  float dy = y2 - y1;
  return sqrt(dx * dx + dy * dy);
}
```

### Funciones para Formas Complejas

#### Función para Dibujar Estrella
```processing
void setup() {
  size(600, 400);
}

void draw() {
  background(0);
  
  // Dibujar estrellas de diferentes tamaños
  dibujarEstrella(150, 150, 50, 5);
  dibujarEstrella(350, 200, 80, 8);
  dibujarEstrella(450, 100, 30, 6);
}

void dibujarEstrella(float x, float y, float radio, int puntas) {
  float angulo = TWO_PI / puntas;
  float radioInterno = radio * 0.5;
  
  fill(255, 255, 0);
  stroke(255);
  strokeWeight(2);
  
  beginShape();
  for (int i = 0; i < puntas; i++) {
    // Punto exterior
    float xExt = x + cos(i * angulo) * radio;
    float yExt = y + sin(i * angulo) * radio;
    vertex(xExt, yExt);
    
    // Punto interior
    float xInt = x + cos(i * angulo + angulo * 0.5) * radioInterno;
    float yInt = y + sin(i * angulo + angulo * 0.5) * radioInterno;
    vertex(xInt, yInt);
  }
  endShape(CLOSE);
}
```

### Funciones de Utilidad

#### Función para Validar Entrada
```processing
String entrada = "";

void setup() {
  size(400, 200);
}

void draw() {
  background(255);
  
  fill(0);
  text("Escribe un número: " + entrada, 20, 50);
  
  if (esNumeroValido(entrada)) {
    text("✓ Número válido", 20, 80);
    float numero = float(entrada);
    text("Valor: " + numero, 20, 100);
  } else if (entrada.length() > 0) {
    text("✗ No es un número válido", 20, 80);
  }
}

void keyPressed() {
  if (key >= '0' && key <= '9' || key == '.') {
    entrada += key;
  } else if (key == BACKSPACE && entrada.length() > 0) {
    entrada = entrada.substring(0, entrada.length() - 1);
  }
}

boolean esNumeroValido(String texto) {
  if (texto.length() == 0) return false;
  
  try {
    float numero = float(texto);
    return true;
  } catch (NumberFormatException e) {
    return false;
  }
}
```

### Recursión - Funciones que se Llaman a Sí Mismas

#### Árbol Fractal
```processing
void setup() {
  size(800, 600);
}

void draw() {
  background(0);
  
  stroke(255);
  strokeWeight(2);
  
  // Dibujar árbol desde la base
  translate(width/2, height);
  dibujarRama(100, 0);
}

void dibujarRama(float longitud, int nivel) {
  // Condición de parada
  if (longitud < 10) return;
  
  // Dibujar rama actual
  line(0, 0, 0, -longitud);
  
  // Moverse al final de la rama
  translate(0, -longitud);
  
  // Rama izquierda
  pushMatrix();
  rotate(-PI/6);
  dibujarRama(longitud * 0.7, nivel + 1);
  popMatrix();
  
  // Rama derecha
  pushMatrix();
  rotate(PI/6);
  dibujarRama(longitud * 0.7, nivel + 1);
  popMatrix();
}
```

#### Espiral Recursiva
```processing
void setup() {
  size(600, 600);
}

void draw() {
  background(255);
  
  translate(width/2, height/2);
  stroke(0);
  strokeWeight(1);
  
  dibujarEspiral(0, 0, 100, 0);
}

void dibujarEspiral(float x, float y, float radio, float angulo) {
  if (radio < 2) return;
  
  // Calcular siguiente posición
  float nuevoX = x + cos(angulo) * radio;
  float nuevoY = y + sin(angulo) * radio;
  
  // Dibujar línea
  line(x, y, nuevoX, nuevoY);
  
  // Llamada recursiva con valores reducidos
  dibujarEspiral(nuevoX, nuevoY, radio * 0.9, angulo + PI/8);
}
```

### Funciones con Arrays

#### Función que Procesa Lista de Puntos
```processing
ArrayList<PVector> puntos;

void setup() {
  size(600, 400);
  puntos = new ArrayList<PVector>();
  
  // Crear puntos aleatorios
  for (int i = 0; i < 10; i++) {
    puntos.add(new PVector(random(width), random(height)));
  }
}

void draw() {
  background(255);
  
  // Dibujar puntos
  dibujarPuntos(puntos);
  
  // Conectar puntos cercanos
  conectarPuntosCercanos(puntos, 100);
}

void dibujarPuntos(ArrayList<PVector> lista) {
  fill(255, 0, 0);
  noStroke();
  
  for (PVector p : lista) {
    ellipse(p.x, p.y, 10, 10);
  }
}

void conectarPuntosCercanos(ArrayList<PVector> lista, float distanciaMaxima) {
  stroke(0, 100);
  strokeWeight(1);
  
  for (int i = 0; i < lista.size(); i++) {
    for (int j = i + 1; j < lista.size(); j++) {
      PVector p1 = lista.get(i);
      PVector p2 = lista.get(j);
      
      float d = PVector.dist(p1, p2);
      
      if (d < distanciaMaxima) {
        line(p1.x, p1.y, p2.x, p2.y);
      }
    }
  }
}
```

### Organización del Código con Funciones

#### Ejemplo: Juego Simple Organizado
```processing
// Variables globales
float jugadorX = 200;
int puntos = 0;
ArrayList<Float> enemigosX;
ArrayList<Float> enemigosY;

void setup() {
  size(600, 400);
  inicializarJuego();
}

void draw() {
  actualizarJuego();
  dibujarJuego();
}

void inicializarJuego() {
  enemigosX = new ArrayList<Float>();
  enemigosY = new ArrayList<Float>();
  
  // Crear enemigos iniciales
  for (int i = 0; i < 5; i++) {
    agregarEnemigo();
  }
}

void actualizarJuego() {
  actualizarJugador();
  actualizarEnemigos();
  verificarColisiones();
}

void dibujarJuego() {
  background(0);
  dibujarJugador();
  dibujarEnemigos();
  dibujarInterfaz();
}

void actualizarJugador() {
  if (keyPressed) {
    if (key == 'a' || key == 'A') jugadorX -= 3;
    if (key == 'd' || key == 'D') jugadorX += 3;
  }
  jugadorX = constrain(jugadorX, 15, width - 15);
}

void actualizarEnemigos() {
  for (int i = enemigosY.size() - 1; i >= 0; i--) {
    enemigosY.set(i, enemigosY.get(i) + 2);
    
    // Eliminar enemigos que salieron de pantalla
    if (enemigosY.get(i) > height) {
      enemigosX.remove(i);
      enemigosY.remove(i);
      agregarEnemigo();
    }
  }
}

void verificarColisiones() {
  for (int i = enemigosX.size() - 1; i >= 0; i--) {
    float distancia = dist(jugadorX, height - 30, enemigosX.get(i), enemigosY.get(i));
    
    if (distancia < 20) {
      // Colisión detectada
      enemigosX.remove(i);
      enemigosY.remove(i);
      puntos += 10;
      agregarEnemigo();
    }
  }
}

void dibujarJugador() {
  fill(0, 255, 0);
  ellipse(jugadorX, height - 30, 30, 30);
}

void dibujarEnemigos() {
  fill(255, 0, 0);
  for (int i = 0; i < enemigosX.size(); i++) {
    ellipse(enemigosX.get(i), enemigosY.get(i), 20, 20);
  }
}

void dibujarInterfaz() {
  fill(255);
  text("Puntos: " + puntos, 10, 30);
  text("A/D para mover", 10, 50);
}

void agregarEnemigo() {
  enemigosX.add(random(20, width - 20));
  enemigosY.add(-20.0);
}
```

### Buenas Prácticas con Funciones

#### 1. Nombres Descriptivos
```processing
// ✅ Buenos nombres
void dibujarJugador() { }
float calcularDistancia() { }
boolean verificarColision() { }

// ❌ Malos nombres
void func1() { }
float calc() { }
boolean check() { }
```

#### 2. Funciones Pequeñas y Específicas
```processing
// ✅ Función específica
void dibujarCirculo(float x, float y, float radio, color c) {
  fill(c);
  ellipse(x, y, radio * 2, radio * 2);
}

// ❌ Función que hace demasiado
void dibujarTodo() {
  // 50 líneas de código haciendo muchas cosas diferentes
}
```

#### 3. Parámetros Claros
```processing
// ✅ Parámetros claros
void moverObjeto(float posicionX, float posicionY, float velocidad) {
  // código
}

// ❌ Parámetros confusos
void moverObjeto(float a, float b, float c) {
  // código
}
```

#### 4. Documentación con Comentarios
```processing
/**
 * Calcula la distancia entre dos puntos
 * @param x1 Coordenada X del primer punto
 * @param y1 Coordenada Y del primer punto
 * @param x2 Coordenada X del segundo punto
 * @param y2 Coordenada Y del segundo punto
 * @return La distancia euclidiana entre los puntos
 */
float calcularDistancia(float x1, float y1, float x2, float y2) {
  float dx = x2 - x1;
  float dy = y2 - y1;
  return sqrt(dx * dx + dy * dy);
}
```

### Depuración con Funciones

#### Función para Debug
```processing
void setup() {
  size(400, 300);
}

void draw() {
  background(255);
  
  float x = mouseX;
  float y = mouseY;
  
  debug("Posición del ratón", "X: " + x + ", Y: " + y);
  debug("Frame", "Número: " + frameCount);
  debug("Tiempo", "Millis: " + millis());
}

void debug(String etiqueta, String valor) {
  static int lineaActual = 0;
  
  fill(0);
  text(etiqueta + ": " + valor, 10, 20 + lineaActual * 20);
  lineaActual++;
  
  // Reiniciar contador cada frame
  if (frameCount != frameCount) lineaActual = 0;
}
```

---

**Capítulo anterior**: [07 Movimiento](../07%20Movimiento) | **Siguiente capítulo**: [09 Objetos](../09%20Objetos)
