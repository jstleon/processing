void setup() {
  size(400, 500);
  background(255);
  
  String frase = "Processing es genial y Processing es útil para aprender";  // En una aplicación real, esta frase podría ser introducida por el usuario
  HashMap<String, Integer> conteoPalabras = contarRepeticiones(frase);
  
  fill(0);
  text("Frase original: " + frase, 20, 50);
  text("Palabras repetidas:", 20, 100);
  
  int y = 150;
  for (String palabra : conteoPalabras.keySet()) {
    if (conteoPalabras.get(palabra) > 1) {
      text(palabra + ": " + conteoPalabras.get(palabra) + " veces", 20, y);
      y += 30;
    }
  }
}

HashMap<String, Integer> contarRepeticiones(String frase) {
  String[] palabras = split(frase, ' ');
  HashMap<String, Integer> conteo = new HashMap<String, Integer>();
  
  for (int i = 0; i < palabras.length; i++) {
    if (conteo.containsKey(palabras[i])) {
      conteo.put(palabras[i], conteo.get(palabras[i]) + 1);
    } else {
      conteo.put(palabras[i], 1);
    }
  }
  
  return conteo;
}
