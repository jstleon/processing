# 03 Dibujo

## Formas Básicas y Fundamentos del Dibujo

En este capítulo exploraremos las funciones básicas de dibujo en Processing. Aprenderemos a crear formas geométricas simples que son los bloques de construcción para crear composiciones más complejas.

### El Sistema de Coordenadas

Processing utiliza un sistema de coordenadas cartesiano donde:
- **Origen (0,0)**: Esquina superior izquierda
- **Eje X**: Se extiende hacia la derecha
- **Eje Y**: Se extiende hacia abajo
- **Unidades**: Píxeles

```processing
size(400, 300);  // Ancho: 400px, Alto: 300px
// (0,0)     (400,0)
//   ┌─────────────┐
//   │             │
//   │    CANVAS   │
//   │             │
//   └─────────────┘
// (0,300)   (400,300)
```

### Funciones Básicas de Configuración

#### `size()`
Define el tamaño de la ventana (canvas)
```processing
size(800, 600);        // Ventana de 800x600 píxeles
size(400, 400);        // Ventana cuadrada de 400x400
```

#### `background()`
Establece el color de fondo
```processing
background(255);        // Fondo blanco
background(0);          // Fondo negro
background(128);        // Fondo gris
background(255, 0, 0);  // Fondo rojo (RGB)
```

### Formas Básicas

#### Punto
```processing
point(x, y);
// Ejemplo:
point(100, 50);  // Punto en coordenada (100, 50)
```

#### Línea
```processing
line(x1, y1, x2, y2);
// Ejemplo:
line(0, 0, 100, 100);  // Línea diagonal
```

#### Rectángulo
```processing
rect(x, y, ancho, alto);
// Ejemplo:
rect(50, 50, 100, 80);  // Rectángulo en (50,50) de 100x80
```

#### Cuadrado
```processing
rect(x, y, lado, lado);
// Ejemplo:
rect(50, 50, 100, 100);  // Cuadrado de 100x100
```

#### Elipse/Círculo
```processing
ellipse(x, y, ancho, alto);
// Ejemplos:
ellipse(100, 100, 50, 50);   // Círculo de 50px de diámetro
ellipse(100, 100, 80, 40);   // Elipse de 80x40
```

#### Triángulo
```processing
triangle(x1, y1, x2, y2, x3, y3);
// Ejemplo:
triangle(100, 50, 50, 150, 150, 150);  // Triángulo
```

### Propiedades de Dibujo

#### Grosor de Línea
```processing
strokeWeight(grosor);
// Ejemplo:
strokeWeight(5);  // Líneas de 5 píxeles de grosor
line(10, 10, 100, 10);
```

#### Color de Contorno
```processing
stroke(color);
// Ejemplos:
stroke(255, 0, 0);  // Contorno rojo
stroke(0);          // Contorno negro
noStroke();         // Sin contorno
```

#### Color de Relleno
```processing
fill(color);
// Ejemplos:
fill(0, 255, 0);    // Relleno verde
fill(255);          // Relleno blanco
noFill();           // Sin relleno (solo contorno)
```

### Ejemplos Prácticos

#### Ejemplo 1: Casa Simple
```processing
size(400, 300);
background(135, 206, 235);  // Cielo azul

// Casa
fill(139, 69, 19);          // Marrón
rect(150, 150, 100, 100);   // Cuerpo de la casa

// Techo
fill(255, 0, 0);            // Rojo
triangle(125, 150, 200, 100, 275, 150);

// Puerta
fill(101, 67, 33);          // Marrón oscuro
rect(180, 200, 20, 50);

// Ventana
fill(173, 216, 230);        // Azul claro
rect(160, 170, 15, 15);
```

#### Ejemplo 2: Rostro Simple
```processing
size(300, 300);
background(255);

// Cara
fill(255, 220, 177);        // Color piel
ellipse(150, 150, 100, 120);

// Ojos
fill(0);                    // Negro
ellipse(135, 140, 8, 8);    // Ojo izquierdo
ellipse(165, 140, 8, 8);    // Ojo derecho

// Nariz
point(150, 155);

// Boca
noFill();
stroke(0);
strokeWeight(2);
arc(150, 170, 20, 10, 0, PI);
```

### Ejercicios de Código Incluidos

Los archivos en la carpeta `code_03` contienen ejemplos progresivos:

- **code_03_01** a **code_03_05**: Formas básicas
- **code_03_06** a **code_03_10**: Combinaciones de formas
- **code_03_11** a **code_03_15**: Colores y propiedades
- **code_03_16** a **code_03_19**: Proyectos completos

### Consejos Importantes

1. **Orden de ejecución**: Processing dibuja de arriba hacia abajo
2. **Capas**: Los elementos dibujados después aparecen encima
3. **Valores RGB**: Van de 0 a 255 (0=oscuro, 255=claro)
4. **Coordenadas**: Siempre verificar que estén dentro del canvas

### Funciones Adicionales

#### Transparencia (Alpha)
```processing
fill(255, 0, 0, 128);  // Rojo con 50% transparencia
```

#### Modos de Rectángulo
```processing
rectMode(CORNER);   // Default: x,y = esquina superior izquierda
rectMode(CENTER);   // x,y = centro del rectángulo
```

#### Modos de Elipse
```processing
ellipseMode(CENTER);  // Default: x,y = centro
ellipseMode(CORNER);  // x,y = esquina del rectángulo contenedor
```

---

**Capítulo anterior**: [02 Processing](../02%20Processing) | **Siguiente capítulo**: [04 Variables](../04%20Variables)
