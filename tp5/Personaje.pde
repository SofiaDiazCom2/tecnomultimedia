class Personaje{

//PROPIEDADES 

PImage dipper;
float posX;
int vidas;
int signos;
int posY,tam;

Personaje(){
  dipper = loadImage("dipper.png");
  posX = width/2;
  posY = 235;
  tam = 200;
  vidas = 3;
  signos = 0; 
  }

  
//MÉTODOS

void dibujar(){
   
 image(dipper, posX, posY, tam, tam);

}

void derecha(){
  posX = posX + 5;
}

void izquierda(){
  posX = posX-5;
}


}
