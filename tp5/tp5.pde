//Link del video ====> https://www.youtube.com/watch?v=v1cpzM_giUA&ab_channel=SofiaDiaz


import ddf.minim.*;
AudioPlayer theme;
AudioPlayer training;
AudioPlayer gameOver;
AudioPlayer outro; 

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
