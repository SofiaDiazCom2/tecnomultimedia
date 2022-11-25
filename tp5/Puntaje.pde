class Puntaje {

  int total;

  Puntaje() {

    total = 0;
  }

  void dibujar() {
    
    fill(255);
    textSize(20);
    text(total, 130, 55);
  }

  void sumarPuntos() {
    total++;
  }
}
