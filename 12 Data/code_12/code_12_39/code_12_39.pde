import g4p_controls.*;

GTextField inputField;

void setup() {
  size(400, 400);
  // Crea un campo de entrada de texto en la posición x=50, y=50, con un ancho de 300 y altura de 30
  inputField = new GTextField(this, 50, 50, 300, 30);
}

void draw() {
  background(200);
}

void handleTextEvents(GEditableTextControl textControl, GEvent event) { 
  if (textControl == inputField && event == GEvent.ENTERED) {
    println(inputField.getText());
  }
}
