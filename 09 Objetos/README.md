# 09 Objetos

## Introducción a la Programación Orientada a Objetos

Los objetos nos permiten agrupar datos (propiedades) y comportamientos (métodos) en una sola estructura, facilitando la organización del código.

### Contenido del capítulo:

- 9.1 ¿Qué son los objetos?
- 9.2 Clases y objetos
- 9.3 Constructor
- 9.4 Propiedades y métodos
- 9.5 Múltiples objetos
- 9.6 Interacción entre objetos

### Objetivos de aprendizaje:

- Entender los conceptos de clase y objeto
- Crear clases personalizadas
- Usar constructores y métodos
- Manejar múltiples instancias de objetos

## 9.1 ¿Qué son los objetos?

Un objeto es una entidad que tiene:
- **Propiedades** (datos/características)
- **Métodos** (comportamientos/acciones)

Ejemplo conceptual:
- **Objeto**: Pelota
- **Propiedades**: posición (x,y), velocidad, color, tamaño
- **Métodos**: mover(), dibujar(), rebotar()

## 9.2 Clases y objetos

### Estructura básica de una clase:
```processing
class Pelota {
  // Propiedades
  float x, y;
  float velocidadX, velocidadY;
  float tamaño;
  color c;
  
  // Constructor
  Pelota(float x_, float y_) {
    x = x_;
    y = y_;
    velocidadX = random(-3, 3);
    velocidadY = random(-3, 3);
    tamaño = 20;
    c = color(random(255), random(255), random(255));
  }
  
  // Métodos
  void mover() {
    x += velocidadX;
    y += velocidadY;
  }
  
  void rebotar() {
    if (x < tamaño/2 || x > width - tamaño/2) {
      velocidadX *= -1;
    }
    if (y < tamaño/2 || y > height - tamaño/2) {
      velocidadY *= -1;
    }
  }
  
  void dibujar() {
    fill(c);
    ellipse(x, y, tamaño, tamaño);
  }
}
```

### Usando la clase:
```processing
Pelota miPelota;

void setup() {
  size(400, 300);
  miPelota = new Pelota(width/2, height/2);
}

void draw() {
  background(255);
  
  miPelota.mover();
  miPelota.rebotar();
  miPelota.dibujar();
}
```

## 9.3 Constructor con parámetros

```processing
class Estrella {
  float x, y;
  float tamaño;
  float rotacion;
  float velocidadRotacion;
  color c;
  
  // Constructor completo
  Estrella(float x_, float y_, float tamaño_, color c_) {
    x = x_;
    y = y_;
    tamaño = tamaño_;
    c = c_;
    rotacion = 0;
    velocidadRotacion = random(-0.05, 0.05);
  }
  
  // Constructor simple (con valores por defecto)
  Estrella(float x_, float y_) {
    this(x_, y_, 30, color(255, 255, 0));
  }
  
  void actualizar() {
    rotacion += velocidadRotacion;
  }
  
  void dibujar() {
    pushMatrix();
    translate(x, y);
    rotate(rotacion);
    fill(c);
    
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
}
```

## 9.4 Métodos avanzados

### Clase Partícula con múltiples métodos:
```processing
class Particula {
  PVector posicion;
  PVector velocidad;
  PVector aceleracion;
  float vida;
  float vidaMaxima;
  color c;
  
  Particula(float x, float y) {
    posicion = new PVector(x, y);
    velocidad = PVector.random2D();
    velocidad.mult(random(2, 5));
    aceleracion = new PVector(0, 0.1);
    vida = vidaMaxima = random(60, 120);
    c = color(random(255), random(255), random(255));
  }
  
  void aplicarFuerza(PVector fuerza) {
    aceleracion.add(fuerza);
  }
  
  void actualizar() {
    velocidad.add(aceleracion);
    posicion.add(velocidad);
    aceleracion.mult(0);
    vida--;
  }
  
  boolean estaMuerta() {
    return vida <= 0;
  }
  
  void dibujar() {
    float alpha = map(vida, 0, vidaMaxima, 0, 255);
    fill(red(c), green(c), blue(c), alpha);
    noStroke();
    ellipse(posicion.x, posicion.y, 8, 8);
  }
}
```

## 9.5 Múltiples objetos

### Array de objetos:
```processing
Pelota[] pelotas;
int numPelotas = 10;

void setup() {
  size(600, 400);
  
  pelotas = new Pelota[numPelotas];
  
  for (int i = 0; i < numPelotas; i++) {
    pelotas[i] = new Pelota(random(width), random(height));
  }
}

void draw() {
  background(255);
  
  for (int i = 0; i < numPelotas; i++) {
    pelotas[i].mover();
    pelotas[i].rebotar();
    pelotas[i].dibujar();
  }
}
```

### ArrayList (lista dinámica):
```processing
ArrayList<Particula> particulas;

void setup() {
  size(600, 400);
  particulas = new ArrayList<Particula>();
}

void draw() {
  background(0);
  
  // Añadir nuevas partículas en la posición del mouse
  if (mousePressed) {
    particulas.add(new Particula(mouseX, mouseY));
  }
  
  // Actualizar y dibujar partículas
  for (int i = particulas.size()-1; i >= 0; i--) {
    Particula p = particulas.get(i);
    
    p.actualizar();
    p.dibujar();
    
    // Remover partículas muertas
    if (p.estaMuerta()) {
      particulas.remove(i);
    }
  }
  
  // Mostrar número de partículas
  fill(255);
  text("Partículas: " + particulas.size(), 10, 20);
}
```

## 9.6 Interacción entre objetos

### Clase con detección de colisiones:
```processing
class Enemigo {
  float x, y;
  float tamaño;
  color c;
  
  Enemigo(float x_, float y_) {
    x = x_;
    y = y_;
    tamaño = 30;
    c = color(255, 0, 0);
  }
  
  void mover() {
    x += random(-2, 2);
    y += random(-2, 2);
    
    // Mantener en pantalla
    x = constrain(x, tamaño/2, width - tamaño/2);
    y = constrain(y, tamaño/2, height - tamaño/2);
  }
  
  boolean colisionaCon(Jugador jugador) {
    float distancia = dist(x, y, jugador.x, jugador.y);
    return distancia < (tamaño/2 + jugador.tamaño/2);
  }
  
  void dibujar() {
    fill(c);
    ellipse(x, y, tamaño, tamaño);
  }
}

class Jugador {
  float x, y;
  float tamaño;
  
  Jugador() {
    x = width/2;
    y = height/2;
    tamaño = 25;
  }
  
  void mover() {
    x = mouseX;
    y = mouseY;
  }
  
  void dibujar() {
    fill(0, 255, 0);
    ellipse(x, y, tamaño, tamaño);
  }
}
```

### Juego completo:
```processing
Jugador jugador;
ArrayList<Enemigo> enemigos;
boolean juegoTerminado = false;

void setup() {
  size(600, 400);
  jugador = new Jugador();
  enemigos = new ArrayList<Enemigo>();
  
  // Crear enemigos
  for (int i = 0; i < 5; i++) {
    enemigos.add(new Enemigo(random(width), random(height)));
  }
}

void draw() {
  background(255);
  
  if (!juegoTerminado) {
    // Actualizar jugador
    jugador.mover();
    jugador.dibujar();
    
    // Actualizar enemigos
    for (Enemigo e : enemigos) {
      e.mover();
      e.dibujar();
      
      // Verificar colisión
      if (e.colisionaCon(jugador)) {
        juegoTerminado = true;
      }
    }
  } else {
    // Pantalla de game over
    fill(255, 0, 0);
    textAlign(CENTER);
    textSize(32);
    text("GAME OVER", width/2, height/2);
    text("Presiona R para reiniciar", width/2, height/2 + 40);
  }
}

void keyPressed() {
  if (key == 'r' || key == 'R') {
    juegoTerminado = false;
    jugador = new Jugador();
    enemigos.clear();
    for (int i = 0; i < 5; i++) {
      enemigos.add(new Enemigo(random(width), random(height)));
    }
  }
}
```

## Ejercicios prácticos:

1. **Sistema solar**: Crear planetas que orbiten alrededor del sol
2. **Pecera virtual**: Peces que naden y eviten obstáculos
3. **Juego de esquivar**: Jugador que evita enemigos
4. **Simulador de partículas**: Sistema complejo de física

---

*Capítulo actualizado desde Cerebro Digital*
