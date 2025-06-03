# Actualización del Curso de Processing

## Resumen de cambios

He creado los **6 capítulos faltantes** de tu curso de Processing basándome en la estructura que ya tienes en GitHub. Estos capítulos están listos para ser subidos:

### ✅ Capítulos ya existentes en GitHub:
- 01 Introducción
- 02 Processing  
- 03 Dibujo
- 04 Variables
- 05 Interactivo
- 06 Medios

### 🆕 Capítulos NUEVOS creados (faltaban en GitHub):
- **07 Movimiento** - Animación, velocidad, aceleración, rebotes
- **08 Funciones** - Creación de funciones, parámetros, valores de retorno
- **09 Objetos** - POO, clases, constructores, métodos, múltiples objetos
- **10 Arrays** - Arreglos, bucles, arrays 2D, ArrayList
- **11 Imágenes** - Carga, manipulación, píxeles, filtros, efectos
- **12 Data** - CSV, JSON, visualización de datos, APIs

## Cómo subir a GitHub

### Opción 1: Usando la interfaz web de GitHub

1. Ve a tu repositorio: https://github.com/jstleon/processing
2. Haz clic en "Add file" > "Create new file"
3. Para cada capítulo, crea la estructura:
   ```
   07 Movimiento/README.md
   08 Funciones/README.md
   09 Objetos/README.md
   10 Arrays/README.md
   11 Imágenes/README.md
   12 Data/README.md
   ```
4. Copia el contenido de cada archivo que he creado aquí

### Opción 2: Usando Git desde terminal

1. Clona tu repositorio:
   ```bash
   git clone https://github.com/jstleon/processing.git
   cd processing
   ```

2. Copia las carpetas nuevas:
   ```bash
   cp -r ~/Desktop/processing-update/* .
   ```

3. Añadir cambios:
   ```bash
   git add .
   git commit -m "Añadir capítulos 07-12: Movimiento, Funciones, Objetos, Arrays, Imágenes y Data"
   git push origin master
   ```

### Opción 3: Usando GitHub Desktop

1. Abre GitHub Desktop
2. Clona el repositorio "processing"
3. Copia las carpetas desde Desktop/processing-update/ al repositorio local
4. Haz commit y push de los cambios

## Estructura final del repositorio

```
processing/
├── README.md
├── 01 Introducción/
├── 02 Processing/
├── 03 Dibujo/
├── 04 Variables/
├── 05 Interactivo/
├── 06 Medios/
├── 07 Movimiento/          ← NUEVO
│   └── README.md
├── 08 Funciones/           ← NUEVO
│   └── README.md
├── 09 Objetos/             ← NUEVO
│   └── README.md
├── 10 Arrays/              ← NUEVO
│   └── README.md
├── 11 Imágenes/            ← NUEVO
│   └── README.md
└── 12 Data/                ← NUEVO
    └── README.md
```

## Contenido de cada capítulo nuevo

### 07 Movimiento
- Conceptos básicos de animación
- Variables de posición, velocidad y aceleración
- Rebotes y límites
- Sistemas de partículas básicos

### 08 Funciones
- Declaración y uso de funciones
- Parámetros y valores de retorno
- Organización del código
- Ejemplos prácticos

### 09 Objetos
- Programación orientada a objetos
- Clases, constructores y métodos
- Múltiples instancias
- Interacción entre objetos

### 10 Arrays
- Arrays unidimensionales y bidimensionales
- ArrayList (listas dinámicas)
- Procesamiento de datos
- Visualizaciones con arrays

### 11 Imágenes
- Carga y manipulación de imágenes
- Acceso a píxeles
- Filtros y efectos
- Creación de imágenes dinámicas

### 12 Data
- Trabajo con CSV y JSON
- Visualización de datos
- APIs y datos en tiempo real
- Dashboard interactivos

## Próximos pasos

1. ✅ **Subir capítulos nuevos** a GitHub
2. 🔄 **Revisar capítulos existentes** - ¿necesitan actualización?
3. 📝 **Actualizar README principal** del repositorio
4. 🏷️ **Añadir topics/tags** al repositorio en GitHub
5. 📖 **Mejorar descripción** del repositorio

## Notas importantes

- Todos los archivos están en formato Markdown (.md)
- El contenido incluye ejemplos de código funcionales
- Los ejercicios son progresivos en dificultad
- Se mantiene la estructura pedagógica del curso original

---

¡Tu curso de Processing ahora está completo con los 12 capítulos! 🎉
