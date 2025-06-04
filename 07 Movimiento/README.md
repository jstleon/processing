# 07 Movimiento

## Animación y Dinámicas Visuales en Processing

El movimiento es el alma de la programación visual. En este capítulo exploramos desde conceptos básicos de animación hasta técnicas avanzadas de física y matemáticas aplicadas al arte digital.

---

## 📚 **Índice del Capítulo**

### **Fundamentos de Animación**
| Sección | Título | Descripción |
|---------|--------|-------------|
| **[7.1](./7.1-animacion-i.md)** | **Animación I** | Conceptos básicos de animación, frame rate, velocidad y dirección |
| **[7.2](./7.2-movimiento-a-b.md)** | **Movimiento de A a B** | Movimiento explícito entre puntos, interpolación y easing |
| **[7.3](./7.3-fisica-101.md)** | **Física 101** | Fundamentos de física: aceleración, gravedad y rebotes |

### **Técnicas Avanzadas**
| Sección | Título | Descripción |
|---------|--------|-------------|
| **[7.4](./7.4-random.md)** | **Random** | Valores aleatorios, randomSeed y movimiento orgánico |
| **[7.5](./7.5-noise.md)** | **La función noise** | Ruido Perlin para movimientos naturales y texturas |
| **[7.6](./7.6-temporizadores.md)** | **Temporizadores** | Control de tiempo, eventos programados y relojes |

### **Matemáticas y Transformaciones**
| Sección | Título | Descripción |
|---------|--------|-------------|
| **[7.7](./7.7-trigonometria.md)** | **Trigonometría** | Funciones sin(), cos(), ondas y movimiento circular |
| **[7.8](./7.8-transform.md)** | **Transform** | Translate(), pushMatrix(), popMatrix() |
| **[7.9](./7.9-rotar-escalar.md)** | **Rotar y Escalar** | Rotate(), scale() y combinación de transformaciones |

---

## 🎯 **Objetivos de Aprendizaje**

Al completar este capítulo serás capaz de:

### **Animación Básica**
- ✅ Crear animaciones fluidas usando el loop `draw()`
- ✅ Controlar velocidad y dirección de objetos
- ✅ Implementar rebotes y límites de pantalla
- ✅ Gestionar el frame rate de tus animaciones

### **Física Aplicada**
- ✅ Simular gravedad y aceleración
- ✅ Crear sistemas de partículas básicos
- ✅ Implementar colisiones y rebotes realistas
- ✅ Aplicar principios de conservación de energía

### **Matemáticas Visuales**
- ✅ Usar trigonometría para movimientos circulares
- ✅ Generar ondas y patrones con sin() y cos()
- ✅ Crear movimientos orgánicos con ruido Perlin
- ✅ Implementar interpolación y easing

### **Transformaciones**
- ✅ Dominar translate(), rotate() y scale()
- ✅ Usar pushMatrix() y popMatrix() efectivamente
- ✅ Combinar transformaciones para efectos complejos
- ✅ Crear sistemas de coordenadas personalizados

---

## 📁 **Estructura de Archivos**

```
07 Movimiento/
├── README.md                    # Este archivo
├── 7.1-animacion-i.md          # Fundamentos de animación
├── 7.2-movimiento-a-b.md       # Interpolación entre puntos
├── 7.3-fisica-101.md           # Conceptos básicos de física
├── 7.4-random.md               # Números aleatorios
├── 7.5-noise.md                # Ruido Perlin
├── 7.6-temporizadores.md       # Control de tiempo
├── 7.7-trigonometria.md        # Funciones trigonométricas
├── 7.8-transform.md            # Transformaciones básicas
├── 7.9-rotar-escalar.md        # Rotación y escalado
└── code_07/                    # Ejemplos de código
    ├── code_07_01/             # Movimiento básico
    ├── code_07_02/             # Rebote vertical
    ├── code_07_03/             # Rebote horizontal
    ├── ...                     # 50 ejemplos en total
    └── code_07_50/             # Sistemas complejos
```

---

## 🚀 **Conceptos Clave**

### **Variables de Animación**
```processing
// Variables de estado de animación
frameCount    // Número de frame actual
millis()      // Milisegundos transcurridos
frameRate     // Frames por segundo

// Control de tiempo
frameRate(30);  // Establecer FPS
```

### **Movimiento Básico**
```processing
float x = 0;
float velocidad = 3.0;

void draw() {
  background(0);
  ellipse(x, height/2, 20, 20);
  x += velocidad;
  
  // Reiniciar cuando sale de pantalla
  if (x > width) x = 0;
}
```

### **Física Básica**
```processing
// Ecuaciones fundamentales
posicion = posicion + velocidad;
velocidad = velocidad + aceleracion;

// Ejemplo con gravedad
float y = 50;
float velocidadY = 0;
float gravedad = 0.5;

void draw() {
  velocidadY += gravedad;  // Aplicar gravedad
  y += velocidadY;         // Aplicar velocidad
  
  // Rebote en el suelo
  if (y > height) {
    velocidadY *= -0.8;    // Invertir y amortiguar
  }
}
```

### **Transformaciones**
```processing
void draw() {
  pushMatrix();              // Guardar estado
    translate(width/2, height/2);  // Mover origen
    rotate(frameCount * 0.01);     // Rotar
    scale(1.5);                    // Escalar
    rect(-25, -25, 50, 50);        // Dibujar
  popMatrix();               // Restaurar estado
}
```

---

## 🎨 **Ejemplos Destacados**

### **Animación con Estela**
```processing
void setup() {
  size(600, 400);
  background(0);
}

void draw() {
  // Fade gradual para crear estela
  fill(0, 20);
  rect(0, 0, width, height);
  
  // Objeto en movimiento
  fill(255, 100, 100);
  float x = width/2 + cos(millis() * 0.01) * 200;
  float y = height/2 + sin(millis() * 0.007) * 150;
  ellipse(x, y, 20, 20);
}
```

### **Sistema de Partículas**
```processing
ArrayList<Particula> particulas;

void setup() {
  particulas = new ArrayList<Particula>();
}

void draw() {
  background(0);
  
  // Agregar nueva partícula cada 5 frames
  if (frameCount % 5 == 0) {
    particulas.add(new Particula(mouseX, mouseY));
  }
  
  // Actualizar todas las partículas
  for (int i = particulas.size()-1; i >= 0; i--) {
    Particula p = particulas.get(i);
    p.actualizar();
    p.mostrar();
    
    if (p.estaMuerta()) {
      particulas.remove(i);
    }
  }
}
```

### **Reloj Analógico**
```processing
void draw() {
  background(255);
  translate(width/2, height/2);
  
  // Calcular ángulos para manecillas
  float s = map(second(), 0, 60, 0, TWO_PI) - HALF_PI;
  float m = map(minute(), 0, 60, 0, TWO_PI) - HALF_PI;
  float h = map(hour() % 12, 0, 12, 0, TWO_PI) - HALF_PI;
  
  // Dibujar manecillas
  strokeWeight(1); line(0, 0, cos(s) * 120, sin(s) * 120);  // Segundos
  strokeWeight(3); line(0, 0, cos(m) * 100, sin(m) * 100);  // Minutos
  strokeWeight(5); line(0, 0, cos(h) * 70, sin(h) * 70);    // Horas
}
```

---

## 🎯 **Ejercicios Prácticos**

### **Básico**
1. **Pelota Rebotando**: Crea una pelota que rebote en todas las paredes
2. **Seguidor de Mouse**: Objeto que sigue al mouse con easing
3. **Múltiples Objetos**: Array de círculos con diferentes velocidades

### **Intermedio**
4. **Simulador Solar**: Sistema de planetas orbitando el sol
5. **Onda Visualizada**: Gráfico de función seno animado
6. **Péndulo**: Simulación de péndulo con física real

### **Avanzado**
7. **Fuegos Artificiales**: Sistema de partículas explosivo
8. **Mandala Rotatorio**: Patrón geométrico que rota y escala
9. **Flocking**: Simulación de bandada de pájaros

---

## 📊 **Progreso de Ejemplos**

| Código | Tema | Dificultad | Descripción |
|--------|------|------------|-------------|
| 7.01-7.06 | **Animación Básica** | 🟢 Fácil | Movimiento lineal y rebotes |
| 7.07-7.12 | **Interpolación** | 🟡 Medio | Movimiento de A a B, easing |
| 7.13-7.19 | **Física** | 🟡 Medio | Gravedad, aceleración, estados |
| 7.20-7.25 | **Random** | 🟡 Medio | Movimiento aleatorio y semillas |
| 7.26-7.31 | **Noise** | 🟠 Medio-Alto | Ruido Perlin y texturas |
| 7.32-7.37 | **Tiempo** | 🟡 Medio | Temporizadores y relojes |
| 7.38-7.43 | **Trigonometría** | 🟠 Medio-Alto | Ondas y movimiento circular |
| 7.44-7.47 | **Transform** | 🟠 Medio-Alto | Translate y matrices |
| 7.48-7.50 | **Avanzado** | 🔴 Difícil | Combinación de técnicas |

---

## 🔗 **Enlaces Útiles**

### **Documentación Oficial**
- [Processing Reference - Motion](https://processing.org/reference/)
- [Learning Processing - Chapter 15](http://learningprocessing.com/)
- [Nature of Code - Vectors](https://natureofcode.com/)

### **Matemáticas y Física**
- [Khan Academy - Trigonometry](https://www.khanacademy.org/math/trigonometry)
- [Physics Simulations](https://phet.colorado.edu/)
- [Easing Functions Cheat Sheet](https://easings.net/)

### **Inspiración**
- [OpenProcessing - Motion](https://openprocessing.org/browse/?q=motion)
- [Creative Coding Examples](https://github.com/terkelg/awesome-creative-coding)
- [Generative Art Gallery](https://typatone.com/)

---

## 💡 **Consejos de Optimización**

### **Rendimiento**
- Usa `frameRate()` para controlar la velocidad
- Evita crear objetos en `draw()` innecesariamente
- Reutiliza objetos cuando sea posible
- Considera usar `noLoop()` para animaciones estáticas

### **Diseño**
- Planifica el movimiento antes de programar
- Usa easing para movimientos más naturales
- Combina diferentes tipos de movimiento
- Experimenta con colores y transparencias

### **Debugging**
- Usa `println()` para verificar valores
- Dibuja elementos de debug temporalmente
- Testa con diferentes velocidades
- Guarda estados interesantes con `save()`

---

**Capítulo anterior**: [06 Medios](../06%20Medios) | **Siguiente capítulo**: [08 Funciones](../08%20Funciones)

---

*Actualizado desde Obsidian: Junio 2025*