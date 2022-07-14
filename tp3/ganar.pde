
void ganar() {
  
  background( #FC7A2E);
  text( "¡GANASTE!", width/2, 50 );  
  textSize(20);
  image(chimenea, 200, 100, tam, tam);

  botonesEnPantallaGanar( color(#5371E5), 320, 100, 150, 30, "REINICIAR", 178, 335 );
  botonesEnPantallaGanar( color(#48AD17), 320, 350, 150, 30, "CRÉDITOS", 430, 335 );


  if (dentroBoton2 && estado.equals("ganar")) {

    estado = "inicio";
    reiniciar();
    
  } else if (dentroBoton3 && estado.equals("ganar")) {

    estado = "creditos";
  }
}
