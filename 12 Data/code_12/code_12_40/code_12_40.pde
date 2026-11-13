void setup() {
  // No necesitamos una ventana gráfica para este ejercicio
  noLoop();
  
  // Cargamos el archivo en un arreglo de strings
  String[] lineas = loadStrings("miArchivo.txt");
  
  // Imprimimos cada línea en la consola
  for (int i = 0; i < lineas.length; i++) {
    println(lineas[i]);
  }
}
