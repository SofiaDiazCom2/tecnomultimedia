class Villanos {

  float x, y;
  int tam;
  float vel;
  PImage villanos; 

  Villanos() {

    x= random(100, 300);
    y = random(-2000, 0) ;
    tam = 100;
    vel = random(2, 4);
    villanos = loadImage( "villano.png");
    villanos.resize(int(tam), int(tam+50));
  }
  
  void dibujar(){
    image(villanos, x, y);
  }
  
  void actualizar(){
    y += vel;
  }
}
