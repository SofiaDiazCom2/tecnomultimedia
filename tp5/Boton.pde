class Boton {

  int posX, posY, ancho, alto, x, y;
  color principal, secundario;
  String texto, estado;

  Boton() {

  }
  
  void dibujar(int posX, int posY, int ancho, int alto, color principal, color secundario, String texto, int x, int y){
    
    if (mouseX>posX && mouseX<posX+ancho&& mouseY>posY && mouseY<posY+alto) {

  strokeWeight(6);
  stroke(principal);
  fill(255);
  rect(posX, posY, ancho, alto);
  pushStyle();
  fill(principal);
  text(texto, x, y); 
  popStyle();
  
} else {

  strokeWeight(6);
  stroke(secundario);
  fill(255);
  rect(posX, posY, ancho, alto);
  pushStyle();
  fill(secundario);
  text(texto, x, y);
  popStyle();
}   
  }
}
