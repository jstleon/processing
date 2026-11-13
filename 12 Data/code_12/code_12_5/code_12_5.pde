void setup() {
  size(400, 400);
  background(255);
  
  String frase = "Processing permite programar proyectos prácticos y potentes";  // En una aplicación real, esta frase podría ser introducida por el usuario
  String[] palabrasFiltradas = filtrarPalabrasPorLetra(frase, 'p');
  
  fill(0);
  text("Frase original: " + frase, 20, 50);
  text("Palabras que comienzan con 'p':", 20, 100);
  
  for (int i = 0; i < palabrasFiltradas.length; i++) {
    text(palabrasFiltradas[i], 20, 150 + i * 30);
  }
}

String[] filtrarPalabrasPorLetra(String frase, char letra) {
  String[] palabras = split(frase, ' ');
  String[] resultado = {};
  
  for (int i = 0; i < palabras.length; i++) {
    if (palabras[i].charAt(0) == letra || palabras[i].charAt(0) == Character.toUpperCase(letra)) {
      resultado = append(resultado, palabras[i]);
    }
  }
  
  return resultado;
}
