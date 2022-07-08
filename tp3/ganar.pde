
void ganar() {
  
  background( #FC7A2E);
  text( "¡GANASTE!", width/2, 50 );  
  textSize(20);
  image(chimenea, 200, 100, tam, tam);

  pushStyle();
  stroke(#5371E5);
  strokeWeight(5);
  noFill();
  rect(100, 320, 150, 30);
  textSize(13);
  text("REINICIAR", 178, 335);

  stroke(#48AD17);
  strokeWeight(5);
  noFill();
  rect(350, 320, 150, 30);
  textSize(13);
  text("CREDITOS", 430, 335);
  popStyle();

  if (dentroBoton2 && estado.equals("ganar")) {

    estado = "inicio";
    reiniciar();
  } else if (dentroBoton3 && estado.equals("ganar")) {

    estado = "creditos";
  }
}
