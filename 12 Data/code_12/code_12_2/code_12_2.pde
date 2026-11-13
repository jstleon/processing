void setup() {
  size(400, 300);
  background(255);
  
  String frase = "Hola Mundo Processing";  // En una aplicación real, esta frase podría ser introducida por el usuario
  int numPalabras = contarPalabras(frase);
  int numLetras = contarLetras(frase);
  
  fill(0);
  text("Frase: " + frase, 20, 50);
  text("Número de palabras: " + numPalabras, 20, 100);
  text("Número de letras: " + numLetras, 20, 150);
}

int contarPalabras(String frase) {
  String[] palabras = split(frase, ' ');
  return palabras.length;
}

int contarLetras(String frase) {
  // Eliminamos espacios y contamos los caracteres restantes
  String sinEspacios = join(split(frase, ' '), "");
  return sinEspacios.length();
}
