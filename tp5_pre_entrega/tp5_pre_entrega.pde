import ddf.minim.*;

String estado; 
PImage intro, reglas, titulo, ganaste, perdiste, creditos;
boolean dentroBoton, dentroBoton2, dentroBoton3;
PFont letras;
Minim sonido; 
AudioPlayer theme;
AudioPlayer gameOver;
AudioPlayer outro;

Fondo f;


void setup() {
  size(600, 400);
  estado = "inicio";
  intro = loadImage("intro.jpg");
  reglas = loadImage("instrucciones.jpg");
  titulo = loadImage("titulo.png");
  ganaste = loadImage("ganaste.png");
  perdiste = loadImage("perdiste.png");
  creditos = loadImage("creditos.jpg");

  letras = createFont("letras.ttf", 30);
  dentroBoton= mouseX > 180 && mouseX < 430 && mouseY >305 &&  mouseY< 360;
  dentroBoton2= mouseX > 80 && mouseX < 250 && mouseY >300 &&  mouseY< 350;
  dentroBoton3= mouseX > 360 && mouseX < 530 && mouseY >300 &&  mouseY< 350;
  sonido = new Minim(this);
  theme = sonido.loadFile("intro.wav");
  gameOver = sonido.loadFile("gameOver.wav");
  outro = sonido.loadFile("outro.wav");

 f = new Fondo();
}

void draw() {

  textFont(letras);

  if ( estado.equals("inicio") ) {
    inicio();
  }  
  if ( estado.equals("instrucciones") ) {
    instrucciones();
  }
  if ( estado.equals("jugar") ) {
    
    jugar();
  f.actualizar();
  f.dibujar();
  
  }
  if ( estado.equals("ganar") ) {
    ganar();
  }

  if ( estado.equals("perder") ) {
    perder();
  }
  if ( estado.equals("creditos") ) {

    creditos();
  }
  
}

void keyPressed() {
 
  f.teclas();
  
  if (keyCode == ENTER && estado.equals("instrucciones")) {
    estado = "jugar";
  }
}


void inicio() {

  image(intro, 0, 0, 600, 400);
  fill(30, 30, 30, 100);
  noStroke();
  rect(0, 0, 600, 400);
  image( titulo, 130, random(5, 8), 350, 200);
  botones(180, 305, 250, 55, #FF9408, #729C52, "Empezar", 205, 347);
  theme.play();
}

void instrucciones() {

  image(reglas, 0, 0, 600, 400);
  fill(30, 30, 30, 150);
  noStroke();
  rect(40, 50, 520, 275);
  pushStyle();
  fill(#FF9408);
  textSize(22);
  text("Presiona ENTER para jugar", 30, random(360, 364));
  popStyle();
  pushStyle();
  textSize(14);
  fill(255);
  text("   Tu objetivo consiste en hacer que\n\n    Dipper recolecte los 10 simbolos\n\n   sin ser atrapado por los villanos\n\n           o perderá una vida.\n\n\n          Utiliza las teclas ← ↑ →\n\n     para que se mueva de carril.", 22, 100);
  popStyle();
}

void jugar() {
  theme.pause();
  background(#729C52);
  fill(#6D3C11);
  noStroke();
  rect(115, 0, 370, 400);
  pushStyle();
  stroke(#744219);
  strokeWeight(3);
  line(235, 0, 235, 400);
  line(370, 0, 370, 400);
  popStyle();
}

void ganar() {
  pushStyle();
  image(ganaste, 0, 0, 600, 400);
  fill(30, 30, 30, 100);
  noStroke();
  rect(0, 0, 600, 400);  
  popStyle();
  fill(255);
  textSize(45);
  text("¡GANASTE!", 100, 80);
  pushStyle();
  textSize(16);
  botones(80, 300, 170, 50, #FF9408, #729C52, "Reiniciar", 95, 333); //reiniciar
  botones(360, 300, 170, 50, #729C52, #FF9408, "Créditos", 384, 333); //creditos
  popStyle();
}

void perder() {
  background(#E74C3C);
  image( perdiste, 80, random(86, 90), 500, 300);
  textSize(35);
  fill(#08216E);
  text("¡PERDISTE!", 140, random(67, 70));
  pushStyle();
  textSize(16);
  botones(80, 300, 170, 50, #F1C40F, 0, "Reiniciar", 95, 333); //reiniciar
  botones(360, 300, 170, 50, 0, #F1C40F, "Créditos", 384, 333); //creditos
  popStyle();
  theme.pause();
  gameOver.play();
}

void botones(int posX, int posY, int ancho, int alto, color principal, color secundario, String texto, int x, int y) {

  if (mouseX>posX && mouseX<posX+ancho&& mouseY>posY && mouseY<posY+alto) {

    strokeWeight(6);
    stroke(principal);
    fill(255);
    rect(posX, posY, ancho, alto);
    pushStyle();
    fill(principal);
    text(texto, x, y); //205, 347
    popStyle();
  } else {

    strokeWeight(6);
    stroke(secundario);
    fill(255);
    rect(posX, posY, ancho, alto);
    pushStyle();
    fill(secundario);
    text(texto, x, y);
    popStyle();
  }
}

void reiniciar() {
}

void creditos() {

  theme.pause();
  outro.play();
  image(creditos, 0, 0, 600, 400);
  fill(0);
  textSize(18);
  text("     TECNOLOGÍA MULTIMEDIAL 1\n\n\n      Trabajo Práctico n°5\n\n\n Programación orientada a objetos\n\n\n           Profesores:\n\n     Matias Jauregui Lorda\n\n        Tobias Albirosa\n\n\n            Alumna:\n\n  Sofia Magali Diaz (91369/4)\n\n\n    Juego inspirado en la serie\n\n          Gravity Falls", 0, 400-frameCount);
}

void mouseClicked() {

  if (estado.equals("inicio") && mouseX > 180 && mouseX < 430 && mouseY > 305 && mouseY < 360) {
    dentroBoton = true;
    estado = "instrucciones";
  }
}

//perder y ganar depende de lo que haga el usuarix en el juego
//creditos dentro de perder y ganar
