class Personaje{

//PROPIEDADES 

PImage dipper;
float posX;
int vidas;
int signos;

Personaje(){
  dipper = loadImage("dipper.png");
  posX = 200;
  vidas = 3;
  signos = 0; 
  }

  
//MÉTODOS

void dibujar(){
  
 //visualizo la imagen
 
 image(dipper, posX, 235, 220,200);
}

void izquierda(){
posX = 70;

}

void derecha(){
posX = 320;

}

void centro(){
  posX = 200;
}

}



//void colisión(){
  
//  vida--;

// if( vida = 0 ){
// estado == "perder";
//}
//}


//void encontrarSigno(){
//relacion de metodos con signos

//}
