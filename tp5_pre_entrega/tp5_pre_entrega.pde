Juego j;
import ddf.minim.*;

void setup() {
  
  size(600, 400);
  j = new Juego();
}

void draw() {
  
  j.estado();

}

void keyPressed() {

  j.teclas();

}


void mouseClicked() {
  
 j.eventosDeMouse();
 
}
