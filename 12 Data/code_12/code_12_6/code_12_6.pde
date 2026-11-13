void setup() {
  size(400, 500);
  background(255);
  
  String frase = "Processing proporciona un entorno de programación profesional para proyectos";  // En una aplicación real, esta frase podría ser introducida por el usuario
  String[] palabrasFiltradas = filtrarPalabrasPorSubcadena(frase, "pro");
  
  fill(0);
  text("Frase original: " + frase, 20, 50);
  text("Palabras que contienen 'pro':", 20, 100);
  
  for (int i = 0; i < palabrasFiltradas.length; i++) {
    text(palabrasFiltradas[i], 20, 150 + i * 30);
  }
}

String[] filtrarPalabrasPorSubcadena(String frase, String subcadena) {
  String[] palabras = split(frase, ' ');
  String[] resultado = {};
  
  for (int i = 0; i < palabras.length; i++) {
    if (palabras[i].contains(subcadena)) {
      resultado = append(resultado, palabras[i]);
    }
  }
  
  return resultado;
}
