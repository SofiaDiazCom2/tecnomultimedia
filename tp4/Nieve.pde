class Nieve {
  
  PImage copos;
  int cant;
  
  Nieve(){
    copos = loadImage("copos.png");
    cant = 300;
  }
  
  void dibujar(){
    if(mousePressed){
    for ( int c=0; c < cant; c++){
      
    float tam = random(0,40);
    image(copos, random(width), random(height), tam, tam);
    }
    }
  }
}
