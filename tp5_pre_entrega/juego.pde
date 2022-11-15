class Fondo {

  int cant = 10;
  int num = 6;
  Personaje dipper;
  Signos[] signos;
  Villanos[] villanos;

  Fondo() {

    signos = new Signos[cant];
    dipper = new Personaje();
    villanos = new Villanos[num];

    for (int i =0; i < signos.length; i++) {
    signos[i] = new Signos();
    }


    for (int i= 0; i< villanos.length; i++) {

      villanos[i] = new Villanos();
    }
  }


  //Métodos

  void dibujar() {

    dipper.dibujar();

    for (int i =0; i < signos.length; i++) {
      signos[i].dibujar();
    }


    for (int i = 0; i < villanos.length; i++) {
      villanos[i].dibujar();
    }
  }


  void actualizar() {


    for (int i =0; i < signos.length; i++) {
      signos[i].actualizar();
    }



    for (int i =0; i< villanos.length; i++) {
      villanos[i].actualizar();
    }
  }


  void teclas() {

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
