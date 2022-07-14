void jugando() {

  background(#B2B3FF);
  frameCount+=2;

  for (int x=250; x<5000; x+=70) {
    image(arbol, x-frameCount*5, 100, tam, tam);
  }

  for (int x=500; x<5000; x+=400) {
    image(charco, x-frameCount*5, 300, 100, 50);
    
    caida((x-frameCount*5)+45, 300);
    
  }

  image(personajes[cantidad], posX, posY, 100, 130);

  for (int i=0; i<cant; i++) {  
    float diametro = random(0, 40);
    image(copos, random(width), random(height), diametro, diametro);
  }

  if ( contadorTiempo >= 550 ) {
    estado = "ganar";
  }
} 

void calcularMovimiento() {
  personajeSaltando();
}

void personajeSaltando() {
  
  if (keyPressed && keyCode == UP && !personajeSaltando) {
    
    personajeSaltando = true;
    saltar = 1;
    
  } else if (
    personajeSaltando && 
    saltar == 1 &&
    posY < topeSalto) {
    saltar = -1;
    
  } else if (
    personajeSaltando && 
    saltar == -1 &&
    posY > topePiso) {
    personajeSaltando = false;
    
  } else if (personajeSaltando && saltar == 1) {
    posY-=velocidadSalto;
    
  } else if (personajeSaltando && saltar == -1) {
    posY+=velocidadSalto;
  }
}

//FUNCIÓN DE COLISIÓN/CAIDA (con parámetros)

 void caida(float X, float Y){
   
   if ( dist (X, Y , posX+50, posY+60 ) < 70 ) {
     
      estado = "perder";
      
    }
 }
