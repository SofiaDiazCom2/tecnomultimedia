class Signos {

  float x, y;
  int tam;
  float vel;
  PImage signos;

  Signos() {
    
    x = random (0, width);
    y = random(0, height);

    tam = 100;
    vel = random(1, 3);

    signos = loadImage(int (random(9)) + ".png");
    signos.resize(int (tam), int (tam));
  }


  void dibujar() {

    image(signos, x, y);
 
  }
  

  void actualizar() {
    y+= vel;

  }
  
}
