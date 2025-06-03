# 07 Movimiento

## Animación y Dinámicas Visuales

El movimiento es lo que da vida a nuestras creaciones digitales. En este capítulo aprenderemos a crear animaciones fluidas, aplicar principios de física básica y desarrollar sistemas dinámicos que evolucionen en el tiempo.

### Conceptos Fundamentales de Animación

#### El Loop de Animación

Processing ejecuta la función `draw()` continuamente, creando un ciclo perfecto para la animación:

```processing
void setup() {
  size(600, 400);
}

void draw() {
  background(255);
  
  // El código aquí se ejecuta ~60 veces por segundo
  println("Frame: " + frameCount);
}
```

#### Variables de Tiempo

```processing
frameCount    // Número de frames desde el inicio
millis()      // Milisegundos transcurridos
frameRate     // Frames por segundo actual
```

### Movimiento Lineal

#### Movimiento Básico
```processing
float posX = 0;
float velocidad = 2;

void setup() {
  size(800, 400);
}

void draw() {
  background(220);
  
  // Dibujar objeto
  fill(255, 0, 0);
  ellipse(posX, height/2, 50, 50);
  
  // Actualizar posición
  posX += velocidad;
  
  // Reiniciar cuando sale de pantalla
  if (posX > width + 25) {
    posX = -25;
  }
}
```

#### Movimiento en Dos Dimensiones
```processing
float x = 100;
float y = 100;
float velX = 3;
float velY = 2;

void setup() {
  size(600, 400);
}

void draw() {
  background(255);
  
  // Dibujar objeto
  fill(0, 0, 255);
  ellipse(x, y, 30, 30);
  
  // Actualizar posición
  x += velX;
  y += velY;
  
  // Rebotar en los bordes
  if (x < 15 || x > width - 15) {
    velX *= -1;
  }
  if (y < 15 || y > height - 15) {
    velY *= -1;
  }
}
```

### Transformaciones Geométricas

#### Traslación
```processing
float angulo = 0;

void setup() {
  size(600, 400);
}

void draw() {
  background(255);
  
  // Mover el origen de coordenadas
  translate(width/2, height/2);
  
  // Dibujar desde el nuevo origen
  fill(255, 0, 0);
  rect(-25, -25, 50, 50);
  
  // Dibujar objeto que orbita
  translate(100 * cos(angulo), 100 * sin(angulo));
  fill(0, 0, 255);
  ellipse(0, 0, 20, 20);
  
  angulo += 0.05;
}
```

#### Rotación
```processing
float rotacion = 0;

void setup() {
  size(400, 400);
}

void draw() {
  background(255);
  
  translate(width/2, height/2);
  rotate(rotacion);
  
  // Dibujar rectángulo rotando
  fill(255, 0, 0);
  rectMode(CENTER);
  rect(0, 0, 100, 60);
  
  rotacion += 0.02;
}
```

#### Escalado
```processing
float escala = 1;
float direccion = 0.01;

void setup() {
  size(400, 400);
}

void draw() {
  background(255);
  
  translate(width/2, height/2);
  scale(escala);
  
  // Dibujar forma que cambia de tamaño
  fill(0, 255, 0);
  ellipse(0, 0, 100, 100);
  
  // Animar escala
  escala += direccion;
  if (escala > 2 || escala < 0.5) {
    direccion *= -1;
  }
}
```

### Matemáticas del Movimiento

#### Funciones Trigonométricas
```processing
void setup() {
  size(800, 400);
}

void draw() {
  background(255);
  
  // Onda senoidal
  stroke(255, 0, 0);
  strokeWeight(2);
  noFill();
  beginShape();
  for (int x = 0; x < width; x++) {
    float y = height/2 + sin(x * 0.01 + millis() * 0.005) * 100;
    vertex(x, y);
  }
  endShape();
  
  // Partícula siguiendo la onda
  float particleX = millis() * 0.1 % width;
  float particleY = height/2 + sin(particleX * 0.01 + millis() * 0.005) * 100;
  
  fill(255, 0, 0);
  ellipse(particleX, particleY, 20, 20);
}
```

#### Movimiento Circular
```processing
float angulo = 0;
float radio = 150;

void setup() {
  size(500, 500);
}

void draw() {
  background(255);
  
  // Centro
  translate(width/2, height/2);
  
  // Calcular posición en círculo
  float x = cos(angulo) * radio;
  float y = sin(angulo) * radio;
  
  // Dibujar trayectoria
  stroke(200);
  noFill();
  ellipse(0, 0, radio * 2, radio * 2);
  
  // Dibujar objeto
  fill(255, 0, 0);
  ellipse(x, y, 30, 30);
  
  // Incrementar ángulo
  angulo += 0.03;
}
```

### Física Básica

#### Velocidad y Aceleración
```processing
float posY = 50;
float velocidadY = 0;
float gravedad = 0.5;
float rebote = 0.8;

void setup() {
  size(400, 600);
}

void draw() {
  background(255);
  
  // Aplicar física
  velocidadY += gravedad;  // Acelerar hacia abajo
  posY += velocidadY;      // Aplicar velocidad
  
  // Rebotar en el suelo
  if (posY > height - 25) {
    posY = height - 25;
    velocidadY *= -rebote;  // Invertir y reducir velocidad
  }
  
  // Dibujar pelota
  fill(255, 0, 0);
  ellipse(width/2, posY, 50, 50);
}
```

#### Sistema de Partículas Simple
```processing
ArrayList<Particula> particulas;

void setup() {
  size(800, 600);
  particulas = new ArrayList<Particula>();
}

void draw() {
  background(0);
  
  // Agregar nueva partícula
  if (frameCount % 5 == 0) {
    particulas.add(new Particula(width/2, height - 50));
  }
  
  // Actualizar y dibujar partículas
  for (int i = particulas.size() - 1; i >= 0; i--) {
    Particula p = particulas.get(i);
    p.actualizar();
    p.mostrar();
    
    // Eliminar partículas muertas
    if (p.estaMuerta()) {
      particulas.remove(i);
    }
  }
  
  println("Partículas activas: " + particulas.size());
}

class Particula {
  float x, y;
  float velX, velY;
  float vida;
  color col;
  
  Particula(float startX, float startY) {
    x = startX;
    y = startY;
    velX = random(-3, 3);
    velY = random(-8, -3);
    vida = 255;
    col = color(random(255), random(255), random(255));
  }
  
  void actualizar() {
    x += velX;
    y += velY;
    velY += 0.1;  // Gravedad
    vida -= 2;    // Fade out
  }
  
  void mostrar() {
    fill(red(col), green(col), blue(col), vida);
    noStroke();
    ellipse(x, y, 8, 8);
  }
  
  boolean estaMuerta() {
    return vida <= 0;
  }
}
```

### Easing y Interpolación

#### Easing Linear
```processing
float startX = 50;
float endX = 350;
float currentX = startX;
float t = 0;

void setup() {
  size(400, 200);
}

void draw() {
  background(255);
  
  // Interpolación lineal
  currentX = lerp(startX, endX, t);
  
  // Dibujar objeto
  fill(255, 0, 0);
  ellipse(currentX, height/2, 30, 30);
  
  // Animar t
  t += 0.01;
  if (t > 1) {
    t = 0;  // Reiniciar
  }
}
```

#### Easing Suave
```processing
float targetX = 200;
float currentX = 50;
float easing = 0.05;

void setup() {
  size(400, 200);
}

void draw() {
  background(255);
  
  // Easing hacia el objetivo
  float dx = targetX - currentX;
  currentX += dx * easing;
  
  // Dibujar objeto
  fill(0, 255, 0);
  ellipse(currentX, height/2, 30, 30);
  
  // Dibujar objetivo
  fill(255, 0, 0, 100);
  ellipse(targetX, height/2, 10, 10);
}

void mousePressed() {
  targetX = mouseX;  // Nuevo objetivo
}
```

### Ejemplos Prácticos Avanzados

#### Ejemplo 1: Reloj Analógico
```processing
void setup() {
  size(400, 400);
}

void draw() {
  background(255);
  translate(width/2, height/2);
  
  // Círculo del reloj
  stroke(0);
  strokeWeight(2);
  noFill();
  ellipse(0, 0, 300, 300);
  
  // Marcas de horas
  for (int i = 0; i < 12; i++) {
    pushMatrix();
    rotate(i * TWO_PI / 12);
    line(0, -140, 0, -120);
    popMatrix();
  }
  
  // Calcular ángulos
  float s = map(second(), 0, 60, 0, TWO_PI) - HALF_PI;
  float m = map(minute() + norm(second(), 0, 60), 0, 60, 0, TWO_PI) - HALF_PI;
  float h = map(hour() % 12 + norm(minute(), 0, 60), 0, 12, 0, TWO_PI) - HALF_PI;
  
  // Manecilla de segundos
  stroke(255, 0, 0);
  strokeWeight(1);
  line(0, 0, cos(s) * 120, sin(s) * 120);
  
  // Manecilla de minutos
  stroke(0);
  strokeWeight(3);
  line(0, 0, cos(m) * 100, sin(m) * 100);
  
  // Manecilla de horas
  strokeWeight(5);
  line(0, 0, cos(h) * 70, sin(h) * 70);
  
  // Centro
  fill(0);
  ellipse(0, 0, 10, 10);
}
```

#### Ejemplo 2: Simulador de Órbitas
```processing
ArrayList<Planeta> planetas;
PVector sol;

void setup() {
  size(800, 800);
  sol = new PVector(width/2, height/2);
  planetas = new ArrayList<Planeta>();
  
  // Crear planetas
  planetas.add(new Planeta(250, 0.03, color(255, 100, 100)));
  planetas.add(new Planeta(350, 0.02, color(100, 255, 100)));
  planetas.add(new Planeta(450, 0.015, color(100, 100, 255)));
}

void draw() {
  background(0);
  
  // Dibujar sol
  fill(255, 255, 0);
  ellipse(sol.x, sol.y, 40, 40);
  
  // Actualizar planetas
  for (Planeta p : planetas) {
    p.orbitar();
    p.mostrar();
  }
}

class Planeta {
  float radio;
  float velocidad;
  float angulo;
  color col;
  
  Planeta(float r, float v, color c) {
    radio = r;
    velocidad = v;
    angulo = random(TWO_PI);
    col = c;
  }
  
  void orbitar() {
    angulo += velocidad;
  }
  
  void mostrar() {
    float x = sol.x + cos(angulo) * radio;
    float y = sol.y + sin(angulo) * radio;
    
    fill(col);
    ellipse(x, y, 20, 20);
    
    // Dibujar órbita
    stroke(red(col), green(col), blue(col), 50);
    noFill();
    ellipse(sol.x, sol.y, radio * 2, radio * 2);
  }
}
```

### Optimización de Animaciones

#### Control de Frame Rate
```processing
void setup() {
  size(400, 300);
  frameRate(30);  // Limitar a 30 FPS
}

void draw() {
  background(255);
  
  // Mostrar FPS actual
  fill(0);
  text("FPS: " + nf(frameRate, 0, 1), 10, 20);
}
```

#### Animación Independiente del Frame Rate
```processing
float posX = 0;
float velocidadPorSegundo = 100;  // píxeles por segundo
int ultimoTiempo = 0;

void setup() {
  size(600, 200);
  ultimoTiempo = millis();
}

void draw() {
  background(255);
  
  // Calcular delta time
  int tiempoActual = millis();
  float deltaTime = (tiempoActual - ultimoTiempo) / 1000.0;
  ultimoTiempo = tiempoActual;
  
  // Movimiento independiente del frame rate
  posX += velocidadPorSegundo * deltaTime;
  
  if (posX > width) posX = 0;
  
  fill(255, 0, 0);
  ellipse(posX, height/2, 30, 30);
}
```

### Técnicas Avanzadas

#### Trail Effect (Efecto de Estela)
```processing
void setup() {
  size(600, 400);
  background(0);
}

void draw() {
  // Fade del fondo para crear trail
  fill(0, 20);
  rect(0, 0, width, height);
  
  // Dibujar objeto en movimiento
  fill(255, 100, 100);
  float x = width/2 + cos(millis() * 0.01) * 200;
  float y = height/2 + sin(millis() * 0.007) * 150;
  ellipse(x, y, 20, 20);
}
```

#### Animación con Ruido Perlin
```processing
float noiseOffset = 0;

void setup() {
  size(800, 400);
}

void draw() {
  background(255);
  
  // Generar movimiento orgánico con ruido
  for (int x = 0; x < width; x += 20) {
    float noiseValue = noise(x * 0.01, noiseOffset);
    float y = map(noiseValue, 0, 1, 0, height);
    
    fill(100, 150, 255);
    ellipse(x, y, 15, 15);
  }
  
  noiseOffset += 0.01;
}
```

---

**Capítulo anterior**: [06 Medios](../06%20Medios) | **Siguiente capítulo**: [08 Funciones](../08%20Funciones)
