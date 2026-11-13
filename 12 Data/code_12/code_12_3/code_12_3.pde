void setup() {
  size(400, 300);
  background(255);
  
  String frase = "Hola Mundo Processing con OpenAI";  // En una aplicación real, esta frase podría ser introducida por el usuario
  String palabraLarga = encontrarPalabraLarga(frase);
  String palabraCorta = encontrarPalabraCorta(frase);
  
  fill(0);
  text("Frase: " + frase, 20, 50);
  text("Palabra más larga: " + palabraLarga, 20, 100);
  text("Palabra más corta: " + palabraCorta, 20, 150);
}

String encontrarPalabraLarga(String frase) {
  String[] palabras = split(frase, ' ');
  String palabraLarga = "";
  for (int i = 0; i < palabras.length; i++) {
    if (palabras[i].length() > palabraLarga.length()) {
      palabraLarga = palabras[i];
    }
  }
  return palabraLarga;
}

String encontrarPalabraCorta(String frase) {
  String[] palabras = split(frase, ' ');
  String palabraCorta = palabras[0];
  for (int i = 1; i < palabras.length; i++) {
    if (palabras[i].length() < palabraCorta.length()) {
      palabraCorta = palabras[i];
    }
  }
  return palabraCorta;
}
