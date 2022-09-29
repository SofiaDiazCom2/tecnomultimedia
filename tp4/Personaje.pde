class Personaje {

  int tam;
  int velocidad;
  int limiteSup;
  int limiteInf;
  int saltar;  
  float x;
  float y;
  float posx;
  float posy;
  boolean saltando;

  PImage jack;  
  PImage murcielago;

  Personaje(float x_, float y_, int tamanio) {

    x= x_; 
    y= y_; 
    tam= tamanio ; 
    posx= x_;
    posy= y_;
    velocidad = 7;
    limiteSup = 100;
    limiteInf = 220;
    
    jack= loadImage("jack.png");
    murcielago = loadImage("murcielago.png");
  }


  void dibujar() {
    image(jack, x, y, tam, tam);
  }
  
 void dibujarMurcielago(){
   image(murcielago, posx, posy, tam, tam);
 }


  void saltar() {

    if (keyPressed && keyCode == UP && !saltando) {

      saltando = true;
      saltar = 1;
    } else if ( saltando && saltar == 1 && y < limiteSup ) {

      saltar = -1;
    } else if ( saltando && saltar == -1 && y > limiteInf) {

      saltando = false;
    } else if ( saltando && saltar ==1 ) {

      y -= velocidad;
    } else if ( saltando && saltar == -1 ) {

      y+= velocidad;
    }
  }
}
