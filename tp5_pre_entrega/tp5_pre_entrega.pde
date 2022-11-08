import ddf.minim.*;

String estado; 
PImage intro;
boolean dentroBoton;
PFont letras;
Minim sonido; 
AudioPlayer player;

void setup() {
  size(600, 400);
  estado = "inicio";
  intro = loadImage("intro.jpg");
  letras = createFont("letras.ttf", 30);
  dentroBoton= mouseX > 180 && mouseX < 430 && mouseY >305 &&  mouseY< 360;
sonido = new Minim(this);
player = sonido.loadFile(".wav");
}

void draw() {

  textFont(letras);

  if ( estado.equals("inicio") ) {
    inicio();
  }
}

//void keyPressed(){
//el personaje se mueve con las teclas de izquierda y de derecha
//}

//void mousePressed(){
//}

//}


void inicio() {

  image(intro, 0, 0, 600, 400);
  pushStyle();
  fill(255);
  text("Scooby-Doo!", 160, random(98, 101));
  popStyle();
  botones(180, 305, 250, 55);
}

void instrucciones() {
  background(255);
}

void jugar() {
}

void ganar() {
}

void perder() {
}

void botones(int posX, int posY, int ancho, int alto) {

  if (mouseX>180 && mouseX<430&& mouseY>305 && mouseY<360) {

    strokeWeight(4);
    fill(0);
    rect(posX, posY, ancho, alto);
    pushStyle();
    fill(#2FBC45);
    text("Empezar", 205, 347);
    
  } else {

    fill(#2FBC45);
    rect(posX, posY, ancho, alto);
    fill(0);
    text("Empezar", 205, 347);
  }
}

void mouseClicked(){
  
  if (estado.equals("inicio") && mouseX > 180 && mouseX < 430 && mouseY > 305 && mouseY < 360){
  dentroBoton = true;
  estado = "instrucciones";
  }
}

//perder y ganar depende de lo que haga el usuarix en el juego
//creditos dentro de perder y ganar
