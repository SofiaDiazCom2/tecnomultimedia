class Contador {

Contador() {
        
  }

  void dibujar(color relleno, int posX, int posY ) {
    
     fill(relleno);
    rect(posX, posY, 150, 40);
    textSize(15);
    fill(255);
    text("signos", 30, 50);
    
  }
}
