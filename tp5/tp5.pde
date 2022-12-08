//Link del video ====> https://www.youtube.com/watch?v=1IzbD4ZZpJo&ab_channel=SofiaDiaz


import ddf.minim.*;
AudioPlayer theme;
AudioPlayer training;
AudioPlayer gameOver;
AudioPlayer outro; 
AudioPlayer pickUp; 
AudioPlayer golpe;

Minim sonido;

Juego j;

void setup() {

  size(600, 400);
  j = new Juego();

  sonido = new Minim(this);
  theme = sonido.loadFile("intro.wav");
  gameOver = sonido.loadFile("gameOver.wav");
  outro = sonido.loadFile("outro.wav");
  training = sonido.loadFile("jugando.wav");
  pickUp = sonido.loadFile("pickUp.wav");
  golpe = sonido.loadFile("golpe.wav");

  theme.play();
}

void draw() {

  j.estado();
  j.colision();
}

void keyPressed() {

  j.teclas();
}


void mouseClicked() {

  j.eventosDeMouse();
}
