void calcularMovimiento() {
   personajeSaltando();
}

void personajeSaltando() {
  if (keyPressed && keyCode == UP && !personajeSaltando) {
    personajeSaltando = true;
    estaSaltandoDireccion = 1; 
  } else if (
    personajeSaltando && 
    estaSaltandoDireccion == 1 &&
    posY < topeSalto) {
    estaSaltandoDireccion = -1;
  } else if (
    personajeSaltando && 
    estaSaltandoDireccion == -1 &&
    posY > topePiso) {
    personajeSaltando = false;
  } else if (personajeSaltando && estaSaltandoDireccion == 1) {
    posY-=velocidadSalto;
  } else if (personajeSaltando && estaSaltandoDireccion == -1) {
    posY+=velocidadSalto;
  }
}

void jugando(){
  
  background(#B2B3FF);
    
   for (int x=-50; x<5000; x+=70) {
      image(arbol, x-frameCount*5, 100, tam, tam);
    }

    for (int x=30; x<5000; x+=600) {
      image(charco, x-frameCount*5, 300, 100, 50);
      
      if(x==posX){
        background(0);
      }
    }

    image(personajes[cantidad], posX, posY, 100, 130);

    for (int i=0; i<cant; i++) {  
      float diametro = random(0, 40);
      image(copos, random(width), random(height), diametro, diametro);
    }

}

void reiniciar(){
  
    estado = "inicio"; 
    contadorTiempo = 0;
    tam= 200;
    cant = 300;
    dentroBoton1= mouseX > 200 && mouseX < 400 && mouseY > 300 &&  mouseY< 350;
    }
    
void creditos(){
  background(#4517AD);
  text("TECNOLOGÍA MULTIMEDIAL 1\nTRABAJO PRÁCTICO n°3\nComisión 2 - Matías Jauregui Lorda\nSofia Magali Diaz (91369/4)", width/2, 200); 
}
