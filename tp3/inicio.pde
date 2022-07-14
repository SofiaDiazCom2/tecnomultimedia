void inicio() {

  image( fondo, 0, 0, 600, 400);

 botonEnPantallaInicio(color (0), color(255,0,0), 200, 325, 200, 50, "START", 300, 350);

  if (dentroBoton1 && estado.equals("inicio")) {
    estado = "instrucciones";
  }
}
