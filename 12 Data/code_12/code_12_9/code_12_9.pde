void setup() {
  size(400, 300);
  background(255);
  
  String frase = "Open Neural Network Exchange";  // En una aplicación real, esta frase podría ser introducida por el usuario
  String acronimo = generarAcronimo(frase);
  
  fill(0);
  text("Frase original: " + frase, 20, 50);
  text("Acrónimo: " + acronimo, 20, 100);
}

String generarAcronimo(String frase) {
  String[] palabras = split(frase, ' ');
  String acronimo = "";
  for (int i = 0; i < palabras.length; i++) {
    acronimo += palabras[i].charAt(0);
  }
  return acronimo.toUpperCase();
}
