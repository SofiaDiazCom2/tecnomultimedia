class Personaje{

//PROPIEDADES 

PImage dipper;
float posX;
int vidas;
int signos;

Personaje(){
  dipper = loadImage("dipper.png");
  posX = 280;
  vidas = 3;
  signos = 0; 
  }

  
//MÉTODOS

void dibujar(){
// //visualizo la imagen
 image(dipper, posX, 300, 60,70);
}

void izquierda(){
posX = 150;

}

void derecha(){
posX = 400;

}

void centro(){
  posX = 280;
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
