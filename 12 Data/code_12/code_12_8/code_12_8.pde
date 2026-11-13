void setup() {
  size(400, 300);
  background(255);
  
  String frase = "Aprender Processing es divertido";  // En una aplicación real, esta frase podría ser introducida por el usuario
  String fraseModificada = reemplazarPalabra(frase, "Processing", "OpenAI");
  
  fill(0);
  text("Frase original: " + frase, 20, 50);
  text("Frase modificada: " + fraseModificada, 20, 100);
}

String reemplazarPalabra(String frase, String palabraOriginal, String palabraNueva) {
  return frase.replace(palabraOriginal, palabraNueva);
}
