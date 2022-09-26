class Personaje{
  
  int ancho;
  int alto;
  int velocidad;
  int limiteSup;
  int limiteInf;
  int tiempoSalto;
  int saltar;
  
  float x;
  float y;
  
  boolean saltando;
    
  PImage personaje;  

Personaje(){
  
  ancho= 100;
  alto= 130;
  x= 200;
  y= 200;
 personaje= loadImage("jack.png"); 
 velocidad = 7;
 limiteSup = 90;
 limiteInf = 200;
 tiempoSalto = 0;
 
}

void dibujar(){
  
image(personaje, x , y, ancho, alto);
}

void saltar(){
  
    if(keyPressed && keyCode == UP && !saltando){
      
 saltando = true;
 saltar = 1;
 
  } else if ( saltando && saltar == 1 && y < limiteSup ){
    
   saltar = -1; 
   
  } else if( saltando && saltar == -1 && y > limiteInf){
    
    saltando = false;
    
  } else if( saltando && saltar ==1 ){
    
    y -= velocidad;
    
  } else if( saltando && saltar == -1 ){
    
    y+= velocidad;
  }
  }
}
