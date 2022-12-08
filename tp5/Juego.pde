class Juego {

  int cant = 25;
  int num = 15;
  String estado;
  PImage intro, reglas, titulo, jugando, ganaste, perdiste, creditos;
  PFont letras;


  Personaje dipper;

  Signos[] signos;
  Villanos[] villano;

  Contador contador;

  Vidas vidas;

  Puntaje puntos;

  Boton botonInicio;
  Boton botonReiniciar;
  Boton botonCreditos;


  //CONSTRUCTOR-----------------------------------------------------------------------------------------------------------------------------------------------------------------

  Juego() {


    estado = "inicio";

    intro = loadImage("intro.jpg");
    reglas = loadImage("instrucciones.jpg");
    titulo = loadImage("titulo.png");
    jugando = loadImage("jugando.jpg");
    ganaste = loadImage("ganaste.png");
    perdiste = loadImage("perdiste.png");
    creditos = loadImage("creditos.jpg");
    letras = createFont("letras.ttf", 30);

    signos = new Signos[cant];
    dipper = new Personaje();
    villano = new Villanos[num];
    contador = new Contador();
    vidas = new Vidas();
    puntos = new Puntaje();

    botonInicio = new Boton();
    botonReiniciar = new Boton();
    botonCreditos = new Boton();


    for (int i =0; i < signos.length; i++) {
      signos[i] = new Signos();
    }


    for (int i= 0; i< villano.length; i++) {

      villano[i] = new Villanos();
    }
  }


  //MÉTODOS-----------------------------------------------------------------------------------------------------------------------------------------------------------------

  void dibujar() {

    dipper.dibujar();

    for (int i =0; i < signos.length; i++) {
      signos[i].dibujar();
    }


    for (int i = 0; i < villano.length; i++) {
      villano[i].dibujar();
    }
  }


  void actualizar() {


    for (int i =0; i < signos.length; i++) {
      signos[i].actualizar();
    }



    for (int i =0; i< villano.length; i++) {
      villano[i].actualizar();
    }
  }


  void estado() {

    textFont(letras);

    if ( estado.equals("inicio") ) {
      inicio();
    }  
    if ( estado.equals("instrucciones") ) {
      instrucciones();
    }
    if ( estado.equals("jugar") ) {
      jugar();
      dibujar();
      actualizar();
      theme.pause();
    }
    if ( estado.equals("ganar") ) {
      ganar();
      training.play();
    }

    if ( estado.equals("perder") ) {
      perder();
      theme.pause();
      gameOver.play();
    }

    if ( estado.equals("creditos") ) {

      creditos();
      theme.pause();
      outro.play();
      gameOver.pause();
      training.pause();
    }

    if (estado.equals("reiniciar")) {
      reiniciar();
      theme.play();
      gameOver.pause();
      outro.pause();
      training.pause();
    }
  }



  //LOGICA DE ESTADOS-----------------------------------------------------------------------------------------------------------------------------------------------------------------


  void inicio() {

    image(intro, 0, 0, 600, 400);
    fill(30, 30, 30, 100);
    noStroke();
    rect(0, 0, 600, 400);
    image( titulo, 130, random(15, 18), 350, 200);

    botonInicio.dibujar(180, 305, 250, 55, #FF9408, #729C52, "Empezar", 205, 347);
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
    text("   Tu objetivo consiste en hacer que\n\n    Dipper recolecte los 10 simbolos\n\n   sin ser atrapado por los villanos\n\n           o perderá una vida.\n\n\n          Utiliza las teclas ←  →\n\n   para que se mueva por la pantalla.", 22, 100);
    popStyle();
  }

  void jugar() {

    image(jugando, 0, 0, 600, 400);
    fill(0, 0, 0, 150);
    rect(0, 0, 600, 400);

    vidas.dibujar();
    contador.dibujar(#FF9408, 20, 25);
    puntos.dibujar();
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

    botonReiniciar.dibujar(80, 300, 170, 50, #FF9408, #729C52, "Reiniciar", 95, 333);
    botonCreditos.dibujar(360, 300, 170, 50, #729C52, #FF9408, "Créditos", 384, 333);

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

    botonReiniciar.dibujar(80, 300, 170, 50, #F1C40F, 0, "Reiniciar", 95, 333);
    botonCreditos.dibujar(360, 300, 170, 50, 0, #F1C40F, "Créditos", 384, 333);

    popStyle();
  }


  void reiniciar() {

    frameCount = 0;
    estado = "inicio";
    vidas.total = 3;
    puntos.total = 0;

    for (int i =0; i < signos.length; i++) {
      signos[i] = new Signos();
    }


    for (int i= 0; i< villano.length; i++) {

      villano[i] = new Villanos();
    }
  }

  void creditos() {

    image(creditos, 0, 0, 600, 400);
    fill(0);
    textSize(18);
    text("     TECNOLOGÍA MULTIMEDIAL 1\n\n\n      Trabajo Práctico n°5\n\n\n Programación orientada a objetos\n\n\n           Profesores:\n\n     Matias Jauregui Lorda\n\n        Tobias Albirosa\n\n\n            Alumna:\n\n  Sofia Magali Diaz (91369/4)\n\n\n    Juego inspirado en la serie\n\n          Gravity Falls", 0, 800-frameCount);
    push();
    textSize(20);
    fill(#729C52);
    rect(0, 320, 600, 80);
    fill(#FF9408);
    text("Presiona SHIFT para reiniciar", 10, 370);
    pop();
  }


  //COLISIÓN-----------------------------------------------------------------------------------------------------------------------------------------------------------------

  void colision () {

    for (int i = 0; i < signos.length; i++) {

      if (dist( signos[i].x, signos[i].y, dipper.posX+20, dipper.posY+60) < 40) {

        signos[i].y = -height;
        puntos.sumarPuntos();
        pickUp.rewind();
        pickUp.play();

        if (puntos.total >= 10) {
          estado = "ganar";
        }
      }
    }

    for (int j = 0; j < villano.length; j++) {

      if (dist( villano[j].x, villano[j].y, dipper.posX+20, dipper.posY+60) < 40) {
        villano[j].y = -height;

        vidas.perderVidas();
        golpe.rewind();
        golpe.play();


        if (vidas.total < 1) {
          estado = "perder";
        }
      }
    }
  }

  //EVENTOS-----------------------------------------------------------------------------------------------------------------------------------------------------------------

  void teclas() {

    if (keyCode == RIGHT && estado.equals("jugar")) {
      dipper.derecha();
    }
    if (keyCode == LEFT && estado.equals("jugar")) {
      dipper.izquierda();
    }
    if (keyCode == ENTER && estado.equals("instrucciones")) {
      estado = "jugar";
    }

    if (keyCode == SHIFT && estado.equals("creditos")) {
      estado = "reiniciar";
    }
  }

  void eventosDeMouse() {

    if (estado.equals("inicio") && mouseX > 180 && mouseX < 430 && mouseY > 305 && mouseY < 360) {

      estado = "instrucciones";
    } else if (estado.equals("ganar") || (estado.equals("perder") && mouseX > 360 && mouseX < 530 && mouseY > 300 &&  mouseY < 350)) {

      estado = "creditos";
    } else if ( estado.equals("ganar") || (estado.equals("perder") &&  mouseX > 80 && mouseX < 250 && mouseY > 300 &&  mouseY < 350)) {

      estado = "reiniciar";
    }
  }
}
