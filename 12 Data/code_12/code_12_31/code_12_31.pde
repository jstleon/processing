PFont miFuente;
String[] lineas;
HashMap<String, Float> tamañosFuente = new HashMap<String, Float>();

void setup() {
  size(800, 800);
  background(255);
  
  // Crea y carga la fuente personalizada
  miFuente = createFont("miFuente.ttf", 32);
  textFont(miFuente);
  
  // Cargar el texto de Don Quijote
  lineas = loadStrings("quijote.txt");
  String texto = join(lineas, " ");
  
  // Procesar 'texto' para obtener las palabras y sus tamaños de fuente
  String[] palabras = splitTokens(texto, " ,.?!:;");
  HashMap<String, Integer> frecuencias = new HashMap<String, Integer>();

  for (String palabra : palabras) {
    palabra = palabra.toLowerCase();
    if (frecuencias.containsKey(palabra)) {
      frecuencias.put(palabra, frecuencias.get(palabra) + 1);
    } else {
      frecuencias.put(palabra, 1);
    }
  }

  int maxFrecuencia = 0;
  for (Integer frecuencia : frecuencias.values()) {
    if (frecuencia > maxFrecuencia) {
      maxFrecuencia = frecuencia;
    }
  }

  for (String palabra : frecuencias.keySet()) {
    float tamaño = map(frecuencias.get(palabra), 1, maxFrecuencia, 2, 148);
    tamañosFuente.put(palabra, tamaño);
  }
  
  mostrarPalabras();
}

void draw() {
  // Opcional: interactividad al pasar el mouse sobre una palabra
}

void mostrarPalabras() {
  String[] keys = tamañosFuente.keySet().toArray(new String[0]);
  for (int i = 0; i < keys.length; i++) {
    fill(0);
    textSize(tamañosFuente.get(keys[i]));
    text(keys[i], random(width), random(height));
  }
}
