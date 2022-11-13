class Fondo {

  int cant = 10;
  Personaje dipper;
  Signos[] signos;

  //Propiedades

  //PImage; ==> Imagenes de fondo
  //int; ==> posx, posy, tam, puntaje (energia) ==> Empieza con 50% de energia, debe llegar al 100% para ganar
  //boolean; ==> dentroBoton;
  //float vel; ==> a medida que avanza el juego, aumenta la velocidad

  Fondo() {

    signos = new Signos[cant];

    for (int i =0; i < signos.length; i++) {
      signos[i] = new Signos();
    }
    
      dipper = new Personaje();

  }


  //Métodos

  void dibujar() {
    
    dipper.dibujar();

    for (int i =0; i < signos.length; i++) {
      signos[i].dibujar();
    }

  }

  void actualizar() {
    

    for (int i =0; i < signos.length; i++) {
      signos[i].actualizar();
    }

  }


void teclas(){
  
  if (keyCode == LEFT && estado.equals("jugar")) {
    dipper.izquierda();
  }

  if (keyCode == RIGHT && estado.equals("jugar")) {
    dipper.derecha();
  }

  if (keyCode == UP && estado.equals("jugar")) {
    dipper.centro();
  }
}
}
