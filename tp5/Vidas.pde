class Vidas {

  int total;
  PImage life;

  Vidas() {
    total = 3;
    life = loadImage("vida.png");
  }


  void dibujar() {

    if (total > 0) {
      image(life, 490, 30, 30, 30);
    }

    if (total > 1) {
      image(life, 520, 30, 30, 30);
    }

    if (total > 2) {
      image(life, 550, 30, 30, 30);
    }
  }

  void perderVidas() {
    
    total--;
  }
}
