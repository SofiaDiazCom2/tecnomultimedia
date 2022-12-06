class Villanos {

  float x, y;
  int tam;
  float vel;
  PImage villanos; 

  Villanos() {

    x= random(0,width);
    y = random(0,height) ;
    tam = 100;
    vel = random(1, 3);
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
