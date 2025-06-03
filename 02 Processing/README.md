# 02 Processing

## Instalación y Configuración

Processing es un entorno de programación de código abierto que nos permite crear aplicaciones gráficas e interactivas de manera sencilla. En este capítulo aprenderemos a instalar y configurar Processing en nuestro sistema.

### ¿Qué es Processing?

Processing es un software que combina un lenguaje de programación simplificado con un entorno de desarrollo integrado (IDE) diseñado específicamente para artistas, diseñadores y programadores principiantes. 

**Características principales:**
- **Gratuito y de código abierto**
- **Multiplataforma** (Windows, macOS, Linux)
- **Sintaxis simplificada** basada en Java
- **Comunidad activa** con miles de ejemplos y librerías
- **Exportación** a diferentes formatos (aplicaciones, web, móvil)

### Instalación

1. **Descargar Processing**
   - Visita [processing.org](https://processing.org/download/)
   - Selecciona tu sistema operativo
   - Descarga la versión más reciente

2. **Instalación por Sistema Operativo**

   **Windows:**
   - Descomprime el archivo ZIP
   - Ejecuta `processing.exe`
   - (Opcional) Crea un acceso directo

   **macOS:**
   - Abre el archivo DMG descargado
   - Arrastra Processing a la carpeta Aplicaciones
   - Ejecuta desde Aplicaciones

   **Linux:**
   - Descomprime el archivo
   - Ejecuta `./processing` desde la terminal
   - (Opcional) Añade al PATH del sistema

### El Entorno de Desarrollo (IDE)

Processing incluye un entorno de desarrollo completo con las siguientes características:

- **Editor de código** con resaltado de sintaxis
- **Consola** para mensajes y errores
- **Barra de herramientas** con botones de ejecución
- **Sistema de pestañas** para múltiples archivos
- **Gestor de librerías** integrado

### Configuración Inicial

**Configuraciones recomendadas:**

1. **Verificar Java**: Processing requiere Java para funcionar
2. **Configurar carpeta de sketches**: Ubicación donde se guardan los proyectos
3. **Actualizar librerías**: Mantener las librerías actualizadas
4. **Configurar editor**: Ajustar preferencias de texto y colores

### Tu Primer Sketch

Un "sketch" en Processing es como llamamos a nuestros programas. Cada sketch es un proyecto que puede contener múltiples archivos.

```processing
// Tu primer programa en Processing
void setup() {
  size(400, 400);
  background(255);
}

void draw() {
  ellipse(mouseX, mouseY, 50, 50);
}
```

### Estructura de Archivos

```
MiSketch/
├── MiSketch.pde (archivo principal)
├── data/ (archivos de datos)
├── code/ (librerías personalizadas)
└── sketch.properties (configuración)
```

### Recursos Adicionales

- **Documentación oficial**: [processing.org/reference](https://processing.org/reference/)
- **Tutoriales**: [processing.org/tutorials](https://processing.org/tutorials/)
- **Ejemplos**: Archivo → Ejemplos en el IDE
- **Foro de la comunidad**: [discourse.processing.org](https://discourse.processing.org/)

---

**Próximo capítulo**: [03 Dibujo](../03%20Dibujo) - Aprenderemos a crear formas y figuras básicas
