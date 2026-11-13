import http.requests.*;

String url = "https://www.datosmundial.com/europa/espana/clima.php";
String content;

void setup() {
  size(1000, 600);
  background(255);
  fill(0);
  // Hacer una solicitud GET a la página
  GetRequest request = new GetRequest(url);
  request.send();

  // Obtener el contenido de la página
  content = request.getContent();
  
  // Intentar extraer las filas de la tabla
  String[] rows = match(content, "<tr>(.*?)</tr>");
  
  if (rows != null) {
    for (String row : rows) {
      println(row); // Imprimir la fila en la consola
    }
  }
}

void draw() {
  // No necesitamos hacer nada en el bucle draw para este ejemplo
}
