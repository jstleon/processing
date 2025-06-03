# 12 Data

## Trabajo con Datos en Processing

Processing nos permite cargar, procesar y visualizar datos de diferentes fuentes y formatos, creando visualizaciones informativas e interactivas.

### Contenido del capítulo:

- 12.1 Tipos de datos y archivos
- 12.2 Carga de archivos de texto
- 12.3 Trabajo con CSV
- 12.4 JSON y datos estructurados
- 12.5 Visualización de datos
- 12.6 APIs y datos en tiempo real

### Objetivos de aprendizaje:

- Cargar datos de diferentes fuentes
- Procesar archivos CSV y JSON
- Crear visualizaciones de datos
- Trabajar con APIs externas
- Implementar gráficos interactivos

## 12.1 Tipos de datos y archivos

### Formatos comunes:
- **TXT**: Texto plano
- **CSV**: Valores separados por comas
- **JSON**: JavaScript Object Notation
- **XML**: Extensible Markup Language
- **TSV**: Valores separados por tabuladores

### Estructura de carpetas:
```
miSketch/
├── miSketch.pde
└── data/
    ├── datos.txt
    ├── ventas.csv
    ├── config.json
    └── temperaturas.tsv
```

## 12.2 Carga de archivos de texto

### Leer archivo completo:
```processing
void setup() {
  String[] lineas = loadStrings("datos.txt");
  
  println("El archivo tiene " + lineas.length + " líneas:");
  
  for (int i = 0; i < lineas.length; i++) {
    println("Línea " + i + ": " + lineas[i]);
  }
}
```

### Procesar números desde texto:
```processing
float[] numeros;

void setup() {
  size(800, 400);
  
  String[] lineas = loadStrings("numeros.txt");
  numeros = new float[lineas.length];
  
  // Convertir strings a números
  for (int i = 0; i < lineas.length; i++) {
    numeros[i] = float(lineas[i]);
  }
}

void draw() {
  background(255);
  
  // Visualizar como gráfico de líneas
  stroke(255, 0, 0);
  strokeWeight(2);
  noFill();
  
  beginShape();
  for (int i = 0; i < numeros.length; i++) {
    float x = map(i, 0, numeros.length-1, 0, width);
    float y = map(numeros[i], 0, 100, height, 0);
    vertex(x, y);
  }
  endShape();
}
```

### Guardar datos:
```processing
void setup() {
  // Crear algunos datos
  String[] datos = new String[10];
  
  for (int i = 0; i < datos.length; i++) {
    datos[i] = "Valor " + i + ": " + random(100);
  }
  
  // Guardar en archivo
  saveStrings("data/salida.txt", datos);
  println("Datos guardados!");
}
```

## 12.3 Trabajo con CSV

### Estructura CSV típica:
```csv
Nombre,Edad,Ciudad,Salario
Ana,25,Madrid,35000
Luis,30,Barcelona,42000
María,28,Valencia,38000
```

### Cargar y procesar CSV:
```processing
Table tabla;

void setup() {
  size(800, 600);
  
  // Cargar CSV con encabezados
  tabla = loadTable("empleados.csv", "header");
  
  println("Filas cargadas: " + tabla.getRowCount());
  
  // Mostrar datos
  for (TableRow fila : tabla.rows()) {
    String nombre = fila.getString("Nombre");
    int edad = fila.getInt("Edad");
    String ciudad = fila.getString("Ciudad");
    float salario = fila.getFloat("Salario");
    
    println(nombre + " (" + edad + ") - " + ciudad + " - $" + salario);
  }
}
```

### Visualización CSV - Gráfico de barras:
```processing
Table ventas;

void setup() {
  size(800, 500);
  ventas = loadTable("ventas_mensuales.csv", "header");
}

void draw() {
  background(255);
  
  float barWidth = width / float(ventas.getRowCount());
  
  // Encontrar valor máximo para escalar
  float maxVenta = 0;
  for (TableRow fila : ventas.rows()) {
    float venta = fila.getFloat("Ventas");
    if (venta > maxVenta) maxVenta = venta;
  }
  
  // Dibujar barras
  int i = 0;
  for (TableRow fila : ventas.rows()) {
    String mes = fila.getString("Mes");
    float venta = fila.getFloat("Ventas");
    
    float barHeight = map(venta, 0, maxVenta, 0, height - 100);
    
    // Color basado en el valor
    fill(map(venta, 0, maxVenta, 50, 255), 100, 150);
    rect(i * barWidth, height - barHeight - 50, barWidth - 2, barHeight);
    
    // Etiquetas
    fill(0);
    textAlign(CENTER);
    text(mes, i * barWidth + barWidth/2, height - 30);
    text(int(venta), i * barWidth + barWidth/2, height - barHeight - 60);
    
    i++;
  }
  
  // Título
  textAlign(CENTER);
  textSize(20);
  text("Ventas Mensuales", width/2, 30);
}
```

### Filtrar y analizar datos:
```processing
Table datos;

void setup() {
  datos = loadTable("estudiantes.csv", "header");
  
  // Filtrar estudiantes con calificación > 80
  float sumaAltas = 0;
  int contadorAltas = 0;
  
  for (TableRow fila : datos.rows()) {
    float calificacion = fila.getFloat("Calificacion");
    
    if (calificacion > 80) {
      sumaAltas += calificacion;
      contadorAltas++;
      
      String nombre = fila.getString("Nombre");
      println(nombre + ": " + calificacion);
    }
  }
  
  float promedioAltas = sumaAltas / contadorAltas;
  println("Promedio de calificaciones altas: " + promedioAltas);
}
```

## 12.4 JSON y datos estructurados

### Estructura JSON típica:
```json
{
  "ciudad": "Madrid",
  "temperatura": 22.5,
  "humedad": 65,
  "condiciones": "Soleado",
  "pronostico": [
    {"dia": "Lunes", "temp": 24},
    {"dia": "Martes", "temp": 26},
    {"dia": "Miércoles", "temp": 23}
  ]
}
```

### Cargar JSON:
```processing
JSONObject clima;

void setup() {
  clima = loadJSONObject("clima.json");
  
  // Leer valores simples
  String ciudad = clima.getString("ciudad");
  float temperatura = clima.getFloat("temperatura");
  int humedad = clima.getInt("humedad");
  
  println("Ciudad: " + ciudad);
  println("Temperatura: " + temperatura + "°C");
  println("Humedad: " + humedad + "%");
  
  // Leer array
  JSONArray pronostico = clima.getJSONArray("pronostico");
  
  for (int i = 0; i < pronostico.size(); i++) {
    JSONObject dia = pronostico.getJSONObject(i);
    String nombreDia = dia.getString("dia");
    int temp = dia.getInt("temp");
    println(nombreDia + ": " + temp + "°C");
  }
}
```

### Crear y guardar JSON:
```processing
void setup() {
  // Crear JSON object
  JSONObject configuracion = new JSONObject();
  
  configuracion.setString("nombre", "Mi App");
  configuracion.setString("version", "1.0");
  configuracion.setBoolean("debug", true);
  
  // Array de usuarios
  JSONArray usuarios = new JSONArray();
  
  for (int i = 0; i < 3; i++) {
    JSONObject usuario = new JSONObject();
    usuario.setString("nombre", "Usuario" + i);
    usuario.setInt("nivel", i + 1);
    usuarios.setJSONObject(i, usuario);
  }
  
  configuracion.setJSONArray("usuarios", usuarios);
  
  // Guardar archivo
  saveJSONObject(configuracion, "data/config.json");
  println("JSON guardado!");
}
```

## 12.5 Visualización de datos

### Gráfico de dispersión:
```processing
Table dataset;

void setup() {
  size(800, 600);
  dataset = loadTable("datos_correlacion.csv", "header");
}

void draw() {
  background(255);
  
  // Encontrar rangos
  float minX = Float.MAX_VALUE, maxX = Float.MIN_VALUE;
  float minY = Float.MAX_VALUE, maxY = Float.MIN_VALUE;
  
  for (TableRow fila : dataset.rows()) {
    float x = fila.getFloat("Variable_X");
    float y = fila.getFloat("Variable_Y");
    
    if (x < minX) minX = x;
    if (x > maxX) maxX = x;
    if (y < minY) minY = y;
    if (y > maxY) maxY = y;
  }
  
  // Dibujar puntos
  for (TableRow fila : dataset.rows()) {
    float x = fila.getFloat("Variable_X");
    float y = fila.getFloat("Variable_Y");
    
    float screenX = map(x, minX, maxX, 50, width - 50);
    float screenY = map(y, minY, maxY, height - 50, 50);
    
    fill(150, 100, 200, 150);
    ellipse(screenX, screenY, 8, 8);
  }
  
  // Ejes
  stroke(0);
  line(50, height - 50, width - 50, height - 50); // X
  line(50, 50, 50, height - 50); // Y
  
  // Etiquetas
  fill(0);
  text("Variable X", width/2, height - 20);
  pushMatrix();
  translate(20, height/2);
  rotate(-PI/2);
  text("Variable Y", 0, 0);
  popMatrix();
}
```

### Dashboard interactivo:
```processing
Table datos;
String[] categorias;
color[] colores;
int categoriaSeleccionada = -1;

void setup() {
  size(1000, 700);
  datos = loadTable("ventas_categoria.csv", "header");
  
  // Extraer categorías únicas
  ArrayList<String> categoriasTemp = new ArrayList<String>();
  for (TableRow fila : datos.rows()) {
    String cat = fila.getString("Categoria");
    if (!categoriasTemp.contains(cat)) {
      categoriasTemp.add(cat);
    }
  }
  
  categorias = categoriasTemp.toArray(new String[0]);
  colores = new color[categorias.length];
  
  // Asignar colores
  for (int i = 0; i < colores.length; i++) {
    colores[i] = color(random(255), random(255), random(255));
  }
}

void draw() {
  background(255);
  
  // Título
  fill(0);
  textAlign(CENTER);
  textSize(24);
  text("Dashboard de Ventas", width/2, 30);
  
  // Gráfico circular (pie chart)
  float[] totales = new float[categorias.length];
  float sumaTotal = 0;
  
  for (TableRow fila : datos.rows()) {
    String cat = fila.getString("Categoria");
    float venta = fila.getFloat("Ventas");
    
    for (int i = 0; i < categorias.length; i++) {
      if (categorias[i].equals(cat)) {
        totales[i] += venta;
        sumaTotal += venta;
        break;
      }
    }
  }
  
  // Dibujar gráfico circular
  float anguloActual = 0;
  float centroX = width * 0.3;
  float centroY = height * 0.5;
  float radio = 120;
  
  for (int i = 0; i < categorias.length; i++) {
    float angulo = map(totales[i], 0, sumaTotal, 0, TWO_PI);
    
    fill(colores[i]);
    if (i == categoriaSeleccionada) {
      stroke(0);
      strokeWeight(3);
    } else {
      noStroke();
    }
    
    arc(centroX, centroY, radio*2, radio*2, anguloActual, anguloActual + angulo);
    anguloActual += angulo;
  }
  
  // Leyenda
  float leyendaX = width * 0.6;
  float leyendaY = height * 0.3;
  
  for (int i = 0; i < categorias.length; i++) {
    fill(colores[i]);
    rect(leyendaX, leyendaY + i * 30, 20, 20);
    
    fill(0);
    text(categorias[i] + ": $" + int(totales[i]), leyendaX + 30, leyendaY + i * 30 + 15);
  }
  
  // Estadísticas
  if (categoriaSeleccionada >= 0) {
    fill(240);
    rect(width * 0.6, height * 0.7, width * 0.35, height * 0.25);
    
    fill(0);
    text("Categoría: " + categorias[categoriaSeleccionada], width * 0.62, height * 0.75);
    text("Total: $" + int(totales[categoriaSeleccionada]), width * 0.62, height * 0.78);
    
    float porcentaje = (totales[categoriaSeleccionada] / sumaTotal) * 100;
    text("Porcentaje: " + nf(porcentaje, 1, 1) + "%", width * 0.62, height * 0.81);
  }
}

void mousePressed() {
  // Detectar click en gráfico circular
  float centroX = width * 0.3;
  float centroY = height * 0.5;
  float radio = 120;
  
  float distancia = dist(mouseX, mouseY, centroX, centroY);
  
  if (distancia <= radio) {
    float angulo = atan2(mouseY - centroY, mouseX - centroX);
    if (angulo < 0) angulo += TWO_PI;
    
    // Calcular qué sector fue clickeado
    float anguloAcumulado = 0;
    float sumaTotal = 0;
    
    for (TableRow fila : datos.rows()) {
      sumaTotal += fila.getFloat("Ventas");
    }
    
    for (int i = 0; i < categorias.length; i++) {
      float totalCategoria = 0;
      for (TableRow fila : datos.rows()) {
        if (fila.getString("Categoria").equals(categorias[i])) {
          totalCategoria += fila.getFloat("Ventas");
        }
      }
      
      float anguloSector = map(totalCategoria, 0, sumaTotal, 0, TWO_PI);
      
      if (angulo >= anguloAcumulado && angulo <= anguloAcumulado + anguloSector) {
        categoriaSeleccionada = i;
        break;
      }
      
      anguloAcumulado += anguloSector;
    }
  }
}
```

## 12.6 APIs y datos en tiempo real

### Cargar datos desde URL:
```processing
JSONObject climaActual;
boolean datosNuevos = false;

void setup() {
  size(400, 300);
  
  // Cargar datos de API (ejemplo ficticio)
  // En la práctica, necesitarías una API key válida
  thread("cargarClima");
}

void cargarClima() {
  try {
    String url = "http://api.clima.com/actual?ciudad=Madrid&key=TU_API_KEY";
    climaActual = loadJSONObject(url);
    datosNuevos = true;
  } catch (Exception e) {
    println("Error cargando datos: " + e.getMessage());
  }
}

void draw() {
  background(255);
  
  if (climaActual != null && datosNuevos) {
    fill(0);
    textAlign(CENTER);
    
    String ciudad = climaActual.getString("ciudad");
    float temp = climaActual.getFloat("temperatura");
    String condicion = climaActual.getString("condicion");
    
    textSize(24);
    text(ciudad, width/2, 60);
    
    textSize(48);
    text(int(temp) + "°C", width/2, 120);
    
    textSize(16);
    text(condicion, width/2, 160);
    
    datosNuevos = false;
  } else {
    fill(150);
    textAlign(CENTER);
    text("Cargando datos...", width/2, height/2);
  }
}

void mousePressed() {
  // Recargar datos
  thread("cargarClima");
}
```

### Monitor de datos en tiempo real:
```processing
ArrayList<Float> valores;
int maxPuntos = 100;

void setup() {
  size(800, 400);
  valores = new ArrayList<Float>();
  
  // Simular datos en tiempo real
  thread("generarDatos");
}

void generarDatos() {
  while (true) {
    // Simular sensor (en la realidad sería una API o puerto serie)
    float nuevoValor = 50 + sin(frameCount * 0.1) * 30 + random(-5, 5);
    
    synchronized(valores) {
      valores.add(nuevoValor);
      
      // Mantener solo los últimos N puntos
      if (valores.size() > maxPuntos) {
        valores.remove(0);
      }
    }
    
    try {
      Thread.sleep(100); // Esperar 100ms
    } catch (InterruptedException e) {
      break;
    }
  }
}

void draw() {
  background(20);
  
  synchronized(valores) {
    if (valores.size() > 1) {
      stroke(0, 255, 100);
      strokeWeight(2);
      noFill();
      
      beginShape();
      for (int i = 0; i < valores.size(); i++) {
        float x = map(i, 0, maxPuntos-1, 0, width);
        float y = map(valores.get(i), 0, 100, height-50, 50);
        vertex(x, y);
      }
      endShape();
      
      // Valor actual
      fill(255);
      textAlign(RIGHT);
      if (valores.size() > 0) {
        float valorActual = valores.get(valores.size()-1);
        text("Valor actual: " + nf(valorActual, 1, 1), width-10, 30);
      }
      
      // Grid
      stroke(50);
      strokeWeight(1);
      for (int i = 0; i <= 10; i++) {
        float y = map(i, 0, 10, height-50, 50);
        line(0, y, width, y);
      }
    }
  }
  
  // FPS
  fill(100);
  text("FPS: " + int(frameRate), 10, height-10);
}
```

## Ejercicios prácticos:

### 1. Analizador de logs:
```processing
Table logs;
Map<String, Integer> contadorIPs;

void setup() {
  size(800, 600);
  logs = loadTable("server_logs.csv", "header");
  contadorIPs = new HashMap<String, Integer>();
  
  // Contar IPs
  for (TableRow fila : logs.rows()) {
    String ip = fila.getString("IP");
    contadorIPs.put(ip, contadorIPs.getOrDefault(ip, 0) + 1);
  }
  
  // Mostrar top 10
  println("Top 10 IPs más activas:");
  // Implementar ordenamiento...
}
```

### 2. Visualizador de redes sociales:
```processing
JSONObject redSocial;
ArrayList<Nodo> nodos;
ArrayList<Conexion> conexiones;

class Nodo {
  String nombre;
  PVector posicion;
  int seguidores;
  
  Nodo(String n, int s) {
    nombre = n;
    seguidores = s;
    posicion = new PVector(random(width), random(height));
  }
  
  void dibujar() {
    float tamaño = map(seguidores, 0, 1000, 5, 30);
    fill(100, 150, 255);
    ellipse(posicion.x, posicion.y, tamaño, tamaño);
    
    fill(0);
    text(nombre, posicion.x + tamaño/2, posicion.y);
  }
}

class Conexion {
  Nodo desde, hasta;
  int fuerza;
  
  Conexion(Nodo d, Nodo h, int f) {
    desde = d;
    hasta = h;
    fuerza = f;
  }
  
  void dibujar() {
    stroke(200, 100);
    strokeWeight(map(fuerza, 0, 100, 1, 5));
    line(desde.posicion.x, desde.posicion.y, hasta.posicion.x, hasta.posicion.y);
  }
}
```

## Proyectos avanzados:

1. **Visualizador de datos financieros**: Gráficos de velas, indicadores técnicos
2. **Mapa de calor**: Visualización de densidad de datos geográficos
3. **Dashboard empresarial**: Múltiples KPIs en tiempo real
4. **Análisis de sentimientos**: Procesar y visualizar datos de texto
5. **Simulador de ecosistemas**: Datos de población, recursos, etc.

---

*Capítulo actualizado desde Cerebro Digital*
