

class Signos {

  float x, y;
  int tam;
  float vel;
  PImage signos;

  //Signos(float posX, float posY, int tamanio){
  //  x = posX;
  //  y = posY;
  //  tam = tamanio;
  //  vel = random(2,5);

  //  signos = loadImage(int (random(9)) + ".png");
  //  signos.resize(int (tam), int (tam));
  //}

  Signos() {
    x = random(115, 370);
    y = random(-800, 0) ;
    tam = 100;
    vel = random(1, 3);
    signos = loadImage(int (random(9)) + ".png");
    signos.resize(int (tam), int (tam));
  }
  

  //// Propiedades
  ////imagen, tamaño, posX (-frameCount), posY 

  ////le doy valor inicial a las propiedades


  //// Metodos

  void dibujar() {
    image(signos, x, y);
  }

  void actualizar() {
    y+= vel;
  }
  }
  //void colision(){
  //relacion de metodos con personaje
  //}
  //}
  //}
