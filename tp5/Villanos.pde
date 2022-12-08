class Villanos {
  
  //PROPIEDADES-----------------------------------------------------------------------------------------------------------------------------------------------------------------

  float x, y;
  int tam;
  float vel;
  PImage villanos; 
  
  //CONSTRUCTOR-----------------------------------------------------------------------------------------------------------------------------------------------------------------

  Villanos() {

    x= random(0,width);
    y = random(-height, 0) ;
    tam = 100;
    vel = random(1, 3);
    villanos = loadImage( "villano.png");
    villanos.resize(int(tam), int(tam+50));
  }
  
    //MÉTODOS-----------------------------------------------------------------------------------------------------------------------------------------------------------------

  void dibujar(){
    image(villanos, x, y);
  }
  
  void actualizar(){
    y += vel;
  }
}
