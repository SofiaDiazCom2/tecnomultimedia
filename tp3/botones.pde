
//FUNCIONES PARA LOS BOTONES EN INICIO Y EN GANAR (con parámetros)


void botonEnPantallaInicio(color c1, color c2,  int posX, int posY, int ancho, int alto, String texto, int pX, int pY){
  
   if (mouseX > 200 && mouseX < 400 && mouseY > 300 &&  mouseY< 350) {

    noStroke();
    fill(c1);
    rect(posX, posY, ancho, alto);
    fill(c2);
    text(texto, pX, pY);
    
  } else {

    noStroke();
    fill(c2);
    rect(posX, posY, ancho, alto);
    fill(c1);
    text(texto, pX, pY);
  }
}


void botonesEnPantallaGanar( color c, int posY, int posX, int ancho, int alto, String texto, int pX, int pY){
  
  pushStyle();
  stroke(c);
  strokeWeight(5);
  noFill();
  rect(posX, posY, ancho, alto);
  textSize(13);
  text(texto, pX, pY);  
  popStyle();

}
