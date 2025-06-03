# 09 Objetos

## Programación Orientada a Objetos en Processing

La programación orientada a objetos (POO) es un paradigma que nos permite organizar el código de manera más natural y eficiente. En este capítulo aprenderemos a crear clases y objetos para modelar elementos del mundo real en nuestros programas.

### ¿Qué es la Programación Orientada a Objetos?

La POO es una forma de programar que organiza el código en **objetos** que tienen:
- **Propiedades** (variables): Características del objeto
- **Métodos** (funciones): Acciones que puede realizar el objeto

**Ejemplo del mundo real:**
- **Objeto**: Un coche
- **Propiedades**: Color, velocidad, posición, combustible
- **Métodos**: Acelerar, frenar, girar, arrancar

### Conceptos Fundamentales

#### Clase vs Objeto
- **Clase**: El "molde" o plantilla (como un plano de construcción)
- **Objeto**: Una instancia específica de la clase (la casa construida)

```processing
// Clase = Molde
class Coche {
  // Propiedades y métodos aquí
}

// Objetos = Instancias específicas
Coche miCoche;        // Coche azul
Coche cocheDeCarlos;  // Coche rojo
```

### Creando Tu Primera Clase

#### Clase Pelota Simple
```processing
// Declarar objeto
Pelota miPelota;

void setup() {
  size(600, 400);
  
  // Crear objeto (instanciar)
  miPelota = new Pelota(100, 50, 2, 3);
}

void draw() {
  background(255);
  
  // Usar métodos del objeto
  miPelota.mover();
  miPelota.rebotar();
  miPelota.mostrar();
}

// Definición de la clase
class Pelota {
  // Propiedades (variables de instancia)
  float x, y;           // Posición
  float velocidadX, velocidadY;  // Velocidad
  float radio;          // Tamaño
  color col;            // Color
  
  // Constructor - se ejecuta al crear el objeto
  Pelota(float startX, float startY, float velX, float velY) {
    x = startX;
    y = startY;
    velocidadX = velX;
    velocidadY = velY;
    radio = 25;
    col = color(255, 0, 0);
  }
  
  // Método para mover
  void mover() {
    x += velocidadX;
    y += velocidadY;
  }
  
  // Método para rebotar en los bordes
  void rebotar() {
    if (x < radio || x > width - radio) {
      velocidadX *= -1;
    }
    if (y < radio || y > height - radio) {
      velocidadY *= -1;
    }
  }
  
  // Método para dibujar
  void mostrar() {
    fill(col);
    ellipse(x, y, radio * 2, radio * 2);
  }
}
```

### Múltiples Objetos con ArrayList

#### Sistema de Partículas Dinámico
```processing
ArrayList<Particula> particulas;

void setup() {
  size(800, 600);
  particulas = new ArrayList<Particula>();
}

void draw() {
  background(0);
  
  // Agregar nuevas partículas en el ratón
  if (mousePressed) {
    particulas.add(new Particula(mouseX, mouseY));
  }
  
  // Actualizar y mostrar partículas
  for (int i = particulas.size() - 1; i >= 0; i--) {
    Particula p = particulas.get(i);
    p.actualizar();
    p.mostrar();
    
    // Eliminar partículas muertas
    if (p.estaMuerta()) {
      particulas.remove(i);
    }
  }
  
  // Mostrar información
  fill(255);
  text("Partículas: " + particulas.size(), 10, 30);
  text("Mantén presionado el ratón", 10, 50);
}

class Particula {
  PVector posicion;
  PVector velocidad;
  PVector aceleracion;
  float vida;
  float vidaMaxima;
  color col;
  
  Particula(float x, float y) {
    posicion = new PVector(x, y);
    velocidad = new PVector(random(-2, 2), random(-5, -1));
    aceleracion = new PVector(0, 0.1);  // Gravedad
    vidaMaxima = 100;
    vida = vidaMaxima;
    col = color(random(255), random(255), random(255));
  }
  
  void actualizar() {
    velocidad.add(aceleracion);
    posicion.add(velocidad);
    vida--;
  }
  
  void mostrar() {
    // Transparencia basada en vida restante
    float alpha = map(vida, 0, vidaMaxima, 0, 255);
    fill(red(col), green(col), blue(col), alpha);
    noStroke();
    
    float tamaño = map(vida, 0, vidaMaxima, 2, 8);
    ellipse(posicion.x, posicion.y, tamaño, tamaño);
  }
  
  boolean estaMuerta() {
    return vida <= 0;
  }
}
```

### Herencia - Clases que Extienden Otras

#### Clase Base: Vehiculo
```processing
ArrayList<Vehiculo> vehiculos;

void setup() {
  size(800, 600);
  vehiculos = new ArrayList<Vehiculo>();
  
  // Crear diferentes tipos de vehículos
  vehiculos.add(new Coche(100, 300));
  vehiculos.add(new Bicicleta(200, 300));
  vehiculos.add(new Avion(300, 100));
}

void draw() {
  background(135, 206, 235);  // Cielo azul
  
  // Suelo
  fill(100, 200, 100);
  rect(0, height - 100, width, 100);
  
  // Actualizar todos los vehículos
  for (Vehiculo v : vehiculos) {
    v.mover();
    v.mostrar();
  }
}

// Clase base (padre)
class Vehiculo {
  float x, y;
  float velocidad;
  color col;
  
  Vehiculo(float startX, float startY) {
    x = startX;
    y = startY;
    velocidad = 2;
    col = color(100);
  }
  
  void mover() {
    x += velocidad;
    if (x > width) x = -50;
  }
  
  void mostrar() {
    fill(col);
    rect(x, y, 40, 20);
  }
}

// Clase hija: Coche
class Coche extends Vehiculo {
  Coche(float startX, float startY) {
    super(startX, startY);  // Llamar constructor del padre
    col = color(255, 0, 0);
    velocidad = 3;
  }
  
  void mostrar() {
    // Cuerpo del coche
    fill(col);
    rect(x, y, 60, 25);
    
    // Ruedas
    fill(0);
    ellipse(x + 15, y + 25, 12, 12);
    ellipse(x + 45, y + 25, 12, 12);
    
    // Ventanas
    fill(150, 200, 255);
    rect(x + 10, y + 5, 40, 12);
  }
}

// Clase hija: Bicicleta
class Bicicleta extends Vehiculo {
  Bicicleta(float startX, float startY) {
    super(startX, startY);
    col = color(0, 255, 0);
    velocidad = 1.5;
  }
  
  void mostrar() {
    // Ruedas
    fill(0);
    strokeWeight(2);
    stroke(100);
    ellipse(x + 10, y + 15, 20, 20);
    ellipse(x + 40, y + 15, 20, 20);
    
    // Marco
    stroke(col);
    strokeWeight(3);
    line(x + 10, y + 15, x + 25, y + 5);   // Tubo diagonal
    line(x + 25, y + 5, x + 40, y + 15);   // Tubo diagonal
    line(x + 25, y + 5, x + 25, y + 15);   // Tubo vertical
    
    noStroke();
  }
}

// Clase hija: Avion
class Avion extends Vehiculo {
  float altitud;
  
  Avion(float startX, float startY) {
    super(startX, startY);
    col = color(0, 0, 255);
    velocidad = 4;
    altitud = 0;
  }
  
  void mover() {
    super.mover();  // Movimiento horizontal del padre
    
    // Movimiento vertical ondulante
    altitud += 0.1;
    y += sin(altitud) * 0.5;
  }
  
  void mostrar() {
    // Cuerpo del avión
    fill(col);
    ellipse(x + 25, y, 50, 15);
    
    // Alas
    fill(200);
    ellipse(x + 20, y, 15, 40);
    
    // Cola
    triangle(x, y - 5, x, y + 5, x - 15, y);
  }
}
```

### Encapsulación - Getters y Setters

#### Clase con Propiedades Privadas
```processing
Contador miContador;

void setup() {
  size(400, 300);
  miContador = new Contador();
}

void draw() {
  background(255);
  
  // Mostrar valor del contador
  fill(0);
  textSize(24);
  text("Contador: " + miContador.getValor(), 50, 100);
  text("Máximo alcanzado: " + miContador.getMaximo(), 50, 140);
  
  // Instrucciones
  textSize(12);
  text("Clic para incrementar", 50, 180);
  text("Tecla 'r' para reiniciar", 50, 200);
}

void mousePressed() {
  miContador.incrementar();
}

void keyPressed() {
  if (key == 'r' || key == 'R') {
    miContador.reiniciar();
  }
}

class Contador {
  private int valor;        // Propiedad privada
  private int maximo;       // Registro del máximo
  private int incremento;   // Cantidad de incremento
  
  // Constructor
  Contador() {
    valor = 0;
    maximo = 0;
    incremento = 1;
  }
  
  // Getter para valor
  int getValor() {
    return valor;
  }
  
  // Getter para máximo
  int getMaximo() {
    return maximo;
  }
  
  // Setter para incremento
  void setIncremento(int nuevoIncremento) {
    if (nuevoIncremento > 0) {  // Validación
      incremento = nuevoIncremento;
    }
  }
  
  // Método para incrementar
  void incrementar() {
    valor += incremento;
    if (valor > maximo) {
      maximo = valor;
    }
  }
  
  // Método para decrementar
  void decrementar() {
    valor -= incremento;
    if (valor < 0) {
      valor = 0;  // No permitir valores negativos
    }
  }
  
  // Método para reiniciar
  void reiniciar() {
    valor = 0;
  }
}
```

### Polimorfismo - Múltiples Formas

#### Diferentes Formas que se Comportan Igual
```processing
ArrayList<Forma> formas;

void setup() {
  size(800, 600);
  formas = new ArrayList<Forma>();
  
  // Crear diferentes tipos de formas
  for (int i = 0; i < 20; i++) {
    float x = random(width);
    float y = random(height);
    
    int tipo = int(random(3));
    switch (tipo) {
      case 0:
        formas.add(new Circulo(x, y));
        break;
      case 1:
        formas.add(new Cuadrado(x, y));
        break;
      case 2:
        formas.add(new Triangulo(x, y));
        break;
    }
  }
}

void draw() {
  background(0);
  
  // Todas las formas responden igual a estos métodos
  for (Forma f : formas) {
    f.mover();
    f.cambiarColor();
    f.mostrar();
  }
}

// Clase abstracta base
abstract class Forma {
  float x, y;
  float velocidadX, velocidadY;
  color col;
  float tamaño;
  
  Forma(float startX, float startY) {
    x = startX;
    y = startY;
    velocidadX = random(-2, 2);
    velocidadY = random(-2, 2);
    col = color(random(255), random(255), random(255));
    tamaño = random(20, 50);
  }
  
  void mover() {
    x += velocidadX;
    y += velocidadY;
    
    // Rebotar en bordes
    if (x < 0 || x > width) velocidadX *= -1;
    if (y < 0 || y > height) velocidadY *= -1;
  }
  
  void cambiarColor() {
    // Cambiar color gradualmente
    float r = red(col) + random(-5, 5);
    float g = green(col) + random(-5, 5);
    float b = blue(col) + random(-5, 5);
    
    col = color(constrain(r, 0, 255), constrain(g, 0, 255), constrain(b, 0, 255));
  }
  
  // Método abstracto - debe ser implementado por las clases hijas
  abstract void mostrar();
}

class Circulo extends Forma {
  Circulo(float x, float y) {
    super(x, y);
  }
  
  void mostrar() {
    fill(col);
    noStroke();
    ellipse(x, y, tamaño, tamaño);
  }
}

class Cuadrado extends Forma {
  Cuadrado(float x, float y) {
    super(x, y);
  }
  
  void mostrar() {
    fill(col);
    noStroke();
    rectMode(CENTER);
    rect(x, y, tamaño, tamaño);
  }
}

class Triangulo extends Forma {
  Triangulo(float x, float y) {
    super(x, y);
  }
  
  void mostrar() {
    fill(col);
    noStroke();
    float radio = tamaño / 2;
    triangle(
      x, y - radio,
      x - radio, y + radio,
      x + radio, y + radio
    );
  }
}
```

### Proyecto Completo: Ecosistema Simple

#### Sistema Complejo con Múltiples Clases
```processing
Ecosistema miEcosistema;

void setup() {
  size(1200, 800);
  miEcosistema = new Ecosistema();
}

void draw() {
  miEcosistema.actualizar();
  miEcosistema.mostrar();
}

void mousePressed() {
  miEcosistema.agregarComida(mouseX, mouseY);
}

void keyPressed() {
  if (key == 'h' || key == 'H') {
    miEcosistema.agregarHerbivoro(mouseX, mouseY);
  }
  if (key == 'c' || key == 'C') {
    miEcosistema.agregarCarnivoro(mouseX, mouseY);
  }
  if (key == 'r' || key == 'R') {
    miEcosistema.reiniciar();
  }
}

class Ecosistema {
  ArrayList<Comida> comida;
  ArrayList<Herbivoro> herbivoros;
  ArrayList<Carnivoro> carnivoros;
  
  Ecosistema() {
    comida = new ArrayList<Comida>();
    herbivoros = new ArrayList<Herbivoro>();
    carnivoros = new ArrayList<Carnivoro>();
    
    // Población inicial
    for (int i = 0; i < 50; i++) {
      comida.add(new Comida(random(width), random(height)));
    }
    
    for (int i = 0; i < 10; i++) {
      herbivoros.add(new Herbivoro(random(width), random(height)));
    }
    
    for (int i = 0; i < 3; i++) {
      carnivoros.add(new Carnivoro(random(width), random(height)));
    }
  }
  
  void actualizar() {
    // Actualizar comida
    for (int i = 0; i < comida.size(); i++) {
      comida.get(i).crecer();
    }
    
    // Actualizar herbívoros
    for (int i = herbivoros.size() - 1; i >= 0; i--) {
      Herbivoro h = herbivoros.get(i);
      h.buscarComida(comida);
      h.actualizar();
      h.reproducir(herbivoros);
      
      if (h.estaMuerto()) {
        herbivoros.remove(i);
      }
    }
    
    // Actualizar carnívoros
    for (int i = carnivoros.size() - 1; i >= 0; i--) {
      Carnivoro c = carnivoros.get(i);
      c.cazar(herbivoros);
      c.actualizar();
      c.reproducir(carnivoros);
      
      if (c.estaMuerto()) {
        carnivoros.remove(i);
      }
    }
    
    // Generar nueva comida ocasionalmente
    if (random(100) < 2 && comida.size() < 100) {
      comida.add(new Comida(random(width), random(height)));
    }
  }
  
  void mostrar() {
    background(50, 150, 50);
    
    // Mostrar elementos del ecosistema
    for (Comida c : comida) c.mostrar();
    for (Herbivoro h : herbivoros) h.mostrar();
    for (Carnivoro c : carnivoros) c.mostrar();
    
    // Mostrar estadísticas
    mostrarEstadisticas();
  }
  
  void mostrarEstadisticas() {
    fill(255);
    rect(10, 10, 200, 120);
    fill(0);
    text("ECOSISTEMA", 20, 30);
    text("Comida: " + comida.size(), 20, 50);
    text("Herbívoros: " + herbivoros.size(), 20, 70);
    text("Carnívoros: " + carnivoros.size(), 20, 90);
    text("Clic: agregar comida", 20, 110);
    text("H: herbívoro, C: carnívoro", 20, 125);
  }
  
  void agregarComida(float x, float y) {
    comida.add(new Comida(x, y));
  }
  
  void agregarHerbivoro(float x, float y) {
    herbivoros.add(new Herbivoro(x, y));
  }
  
  void agregarCarnivoro(float x, float y) {
    carnivoros.add(new Carnivoro(x, y));
  }
  
  void reiniciar() {
    comida.clear();
    herbivoros.clear();
    carnivoros.clear();
    
    // Recrear población inicial
    for (int i = 0; i < 30; i++) {
      comida.add(new Comida(random(width), random(height)));
    }
    for (int i = 0; i < 5; i++) {
      herbivoros.add(new Herbivoro(random(width), random(height)));
    }
    for (int i = 0; i < 2; i++) {
      carnivoros.add(new Carnivoro(random(width), random(height)));
    }
  }
}

class Comida {
  PVector posicion;
  float tamaño;
  float crecimiento;
  
  Comida(float x, float y) {
    posicion = new PVector(x, y);
    tamaño = 2;
    crecimiento = random(0.01, 0.05);
  }
  
  void crecer() {
    tamaño += crecimiento;
    tamaño = constrain(tamaño, 2, 8);
  }
  
  void mostrar() {
    fill(0, 255, 0);
    noStroke();
    ellipse(posicion.x, posicion.y, tamaño, tamaño);
  }
}

class Herbivoro {
  PVector posicion;
  PVector velocidad;
  float energia;
  float edad;
  
  Herbivoro(float x, float y) {
    posicion = new PVector(x, y);
    velocidad = PVector.random2D();
    energia = 100;
    edad = 0;
  }
  
  void buscarComida(ArrayList<Comida> comida) {
    float record = Float.MAX_VALUE;
    int indiceObjetivo = -1;
    
    for (int i = 0; i < comida.size(); i++) {
      float d = PVector.dist(posicion, comida.get(i).posicion);
      if (d < record) {
        record = d;
        indiceObjetivo = i;
      }
    }
    
    if (indiceObjetivo != -1 && record < 5) {
      // Comer
      energia += 20;
      comida.remove(indiceObjetivo);
    } else if (indiceObjetivo != -1) {
      // Moverse hacia la comida
      PVector objetivo = comida.get(indiceObjetivo).posicion;
      PVector fuerza = PVector.sub(objetivo, posicion);
      fuerza.normalize();
      fuerza.mult(0.1);
      velocidad.add(fuerza);
    }
  }
  
  void actualizar() {
    velocidad.limit(2);
    posicion.add(velocidad);
    
    // Wraparound
    if (posicion.x < 0) posicion.x = width;
    if (posicion.x > width) posicion.x = 0;
    if (posicion.y < 0) posicion.y = height;
    if (posicion.y > height) posicion.y = 0;
    
    energia -= 0.5;
    edad++;
  }
  
  void reproducir(ArrayList<Herbivoro> poblacion) {
    if (energia > 150 && random(1000) < 1) {
      poblacion.add(new Herbivoro(posicion.x, posicion.y));
      energia -= 50;
    }
  }
  
  void mostrar() {
    fill(100, 100, 255);
    noStroke();
    ellipse(posicion.x, posicion.y, 12, 12);
  }
  
  boolean estaMuerto() {
    return energia <= 0 || edad > 5000;
  }
}

class Carnivoro {
  PVector posicion;
  PVector velocidad;
  float energia;
  float edad;
  
  Carnivoro(float x, float y) {
    posicion = new PVector(x, y);
    velocidad = PVector.random2D();
    energia = 200;
    edad = 0;
  }
  
  void cazar(ArrayList<Herbivoro> herbivoros) {
    float record = Float.MAX_VALUE;
    int indiceObjetivo = -1;
    
    for (int i = 0; i < herbivoros.size(); i++) {
      float d = PVector.dist(posicion, herbivoros.get(i).posicion);
      if (d < record) {
        record = d;
        indiceObjetivo = i;
      }
    }
    
    if (indiceObjetivo != -1 && record < 8) {
      // Cazar
      energia += 80;
      herbivoros.remove(indiceObjetivo);
    } else if (indiceObjetivo != -1) {
      // Perseguir
      PVector objetivo = herbivoros.get(indiceObjetivo).posicion;
      PVector fuerza = PVector.sub(objetivo, posicion);
      fuerza.normalize();
      fuerza.mult(0.15);
      velocidad.add(fuerza);
    }
  }
  
  void actualizar() {
    velocidad.limit(2.5);
    posicion.add(velocidad);
    
    // Wraparound
    if (posicion.x < 0) posicion.x = width;
    if (posicion.x > width) posicion.x = 0;
    if (posicion.y < 0) posicion.y = height;
    if (posicion.y > height) posicion.y = 0;
    
    energia -= 1;
    edad++;
  }
  
  void reproducir(ArrayList<Carnivoro> poblacion) {
    if (energia > 300 && random(2000) < 1) {
      poblacion.add(new Carnivoro(posicion.x, posicion.y));
      energia -= 100;
    }
  }
  
  void mostrar() {
    fill(255, 100, 100);
    noStroke();
    ellipse(posicion.x, posicion.y, 16, 16);
  }
  
  boolean estaMuerto() {
    return energia <= 0 || edad > 8000;
  }
}
```

### Buenas Prácticas con Objetos

#### 1. Nombres Claros y Descriptivos
```processing
// ✅ Buenos nombres
class JugadorFutbol { }
class CocheDeCarreras { }
class SistemaDeParticulas { }

// ❌ Malos nombres
class Cosa { }
class Objeto1 { }
class X { }
```

#### 2. Responsabilidad Única
```processing
// ✅ Cada clase tiene una responsabilidad clara
class Pelota {
  // Solo maneja comportamiento de pelota
}

class Marcador {
  // Solo maneja el sistema de puntuación
}

class InterfazUsuario {
  // Solo maneja la UI
}
```

#### 3. Encapsulación Apropiada
```processing
class CuentaBancaria {
  private float saldo;  // Privado - no se puede acceder directamente
  
  public float getSaldo() {
    return saldo;
  }
  
  public void depositar(float cantidad) {
    if (cantidad > 0) {
      saldo += cantidad;
    }
  }
}
```

---

**Capítulo anterior**: [08 Funciones](../08%20Funciones) | **Siguiente capítulo**: [10 Arrays](../10%20Arrays)
