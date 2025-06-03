# 07 Movimiento

## Introducción al Movimiento en Processing

En este capítulo exploraremos cómo crear movimiento y animación en Processing.

### Contenido del capítulo:

- 7.1 Conceptos básicos de animación
- 7.2 Variables de posición
- 7.3 Velocidad y dirección
- 7.4 Aceleración
- 7.5 Rebotes y límites
- 7.6 Trayectorias
- 7.7 Ejercicios prácticos

### Objetivos de aprendizaje:

- Entender los principios básicos de la animación
- Manejar variables de posición, velocidad y aceleración
- Crear movimientos fluidos y realistas
- Implementar sistemas de colisiones simples

## 7.1 Conceptos básicos de animación

La animación en Processing se basa en el concepto de **framerate** (velocidad de fotogramas). Por defecto, Processing ejecuta la función `draw()` 60 veces por segundo.

### Variables globales para movimiento:
```processing
float x = 0;     // Posición inicial X
float y = 0;     // Posición inicial Y
float velocidadX = 2;  // Velocidad en X
float velocidadY = 1;  // Velocidad en Y
```

### Ejemplo básico:
```processing
float x = 0;
float velocidad = 2;

void setup() {
  size(400, 200);
}

void draw() {
  background(255);
  
  // Actualizar posición
  x = x + velocidad;
  
  // Dibujar círculo
  ellipse(x, height/2, 20, 20);
  
  // Reiniciar cuando sale de pantalla
  if (x > width) {
    x = 0;
  }
}
```

## 7.2 Variables de posición

### Ejercicio 1: Pelota que rebota
```processing
float x = 50;
float y = 50;
float velocidadX = 3;
float velocidadY = 2;

void setup() {
  size(400, 300);
}

void draw() {
  background(240);
  
  // Actualizar posición
  x += velocidadX;
  y += velocidadY;
  
  // Rebotar en los bordes
  if (x < 0 || x > width) {
    velocidadX *= -1;
  }
  if (y < 0 || y > height) {
    velocidadY *= -1;
  }
  
  // Dibujar pelota
  ellipse(x, y, 30, 30);
}
```

## 7.3 Velocidad y dirección

### Usando vectores:
```processing
PVector posicion;
PVector velocidad;

void setup() {
  size(400, 300);
  posicion = new PVector(width/2, height/2);
  velocidad = new PVector(2, -1);
}

void draw() {
  background(255);
  
  // Actualizar posición
  posicion.add(velocidad);
  
  // Rebotar
  if (posicion.x < 0 || posicion.x > width) {
    velocidad.x *= -1;
  }
  if (posicion.y < 0 || posicion.y > height) {
    velocidad.y *= -1;
  }
  
  // Dibujar
  ellipse(posicion.x, posicion.y, 25, 25);
}
```

## 7.4 Aceleración

```processing
PVector posicion;
PVector velocidad;
PVector aceleracion;

void setup() {
  size(400, 300);
  posicion = new PVector(width/2, height/2);
  velocidad = new PVector(0, 0);
  aceleracion = new PVector(0, 0.1); // Gravedad
}

void draw() {
  background(255);
  
  // Actualizar física
  velocidad.add(aceleracion);
  posicion.add(velocidad);
  
  // Rebotar en el suelo
  if (posicion.y > height) {
    posicion.y = height;
    velocidad.y *= -0.8; // Pérdida de energía
  }
  
  // Dibujar
  ellipse(posicion.x, posicion.y, 20, 20);
}
```

## 7.5 Ejercicios

1. **Pelota básica**: Crear una pelota que se mueva y rebote
2. **Sistema solar**: Crear planetas orbitando
3. **Lluvia**: Múltiples objetos cayendo
4. **Seguimiento**: Objeto que sigue al mouse

---

*Capítulo actualizado desde Cerebro Digital*
