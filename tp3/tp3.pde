PImage arbol, charco, copos, ojos, chimenea, emoji;
PImage personajes[] = new PImage[4];
int cantidad = 0;

int cant, tam, estaSaltandoDireccion;
int velocidadSalto = 7;
int posX = 50;
int posY = 200;
int topePiso = 200;
int topeSalto= 90;
int contadorTiempo;


boolean personajeSaltando;
boolean dentroBoton1;
boolean dentroBoton2;
boolean dentroBoton3;
boolean dentroBoton4;
boolean dentroBoton5;

String estado;

void setup() {

  size(600, 400);
  background(#B2B3FF);

  textSize( 24 );
  textAlign( CENTER, CENTER );

  estado = "inicio";
  contadorTiempo = 0;

  
  arbol= loadImage("arbol.png");
  copos= loadImage("copos.png");
  charco= loadImage("charco.png");
  ojos= loadImage("ojos.png");
  chimenea= loadImage("chimenea.png");
  emoji= loadImage("emoji.png");


  personajes[0]= loadImage("jack.png");
  personajes[1]= loadImage("pennywise.png");
  personajes[2]= loadImage("chucky.png");
  personajes[3]= loadImage("joker.png");

  tam= 200;
  cant = 300;

  dentroBoton1= mouseX > 200 && mouseX < 400 && mouseY > 300 &&  mouseY< 350;
  dentroBoton2= mouseX > 100 && mouseX < 250 && mouseY > 320 &&  mouseY< 350;
  dentroBoton3= mouseX > 350 && mouseX < 500 && mouseY > 320 &&  mouseY< 350;
  dentroBoton4= mouseX > 200 && mouseX < 400 && mouseY > 300 &&  mouseY< 350;
  dentroBoton5= mouseX > 200 && mouseX < 400 && mouseY > 300 &&  mouseY< 350;

}

void draw() {

//PANTALLA DE INICIO

  if ( estado.equals("inicio") ) {
    background(0);
    image(ojos, 60, 60, 500, 200);
    
    stroke(255, 0, 0);
    strokeWeight(7);
    noFill();
    rect(200, 300, 200, 50);
    text("START", 300, 320);

 if (dentroBoton1 && estado.equals("inicio")) {
    estado = "instrucciones";
 }
    
    //PANTALLA DE INSTRUCCIONES
    
  } else if ( estado.equals("instrucciones") ) {
    background( #62AD62);
    fill(255);
    textSize(23);
    text( "INSTRUCCIONES\n\nIntenta que el villano regrese a casa\nAprieta la flecha ↑ para hacer que salte los charcos\nPuedes cambiar el personaje apretando la tecla 'p'", width/2, 150 );  
    pushStyle();
    if ( dist( mouseX, mouseY, width/2, height/2+100) <= 25 ) {
      fill( #1E2D76 );
    } else {
      fill( 0 );
    }
    ellipse( width/2, height/2+100, 50, 50 );
    popStyle();
    
    //PANTALLA DEL JUEGO
    
  } else if ( estado.equals("jugando") ) {
    jugando();
    calcularMovimiento();
    contadorTiempo++;

    if ( contadorTiempo >= 980 ) {
      estado = "ganar";
    }
    
    //PANTALLA DE ¡GANASTE!
    
  } else if ( estado.equals("ganar") ) {
    
    background( #FC7A2E);
    text( "¡GANASTE!", width/2, 50 );  
    image(chimenea, 200, 100, tam, tam);
    
     stroke(#5371E5);
    strokeWeight(5);
    noFill();
    rect(100, 320, 150, 30);
    text("REINICIAR",178,333);
    
    stroke(#48AD17);
    strokeWeight(5);
    noFill();
    rect(350, 320, 150, 30);
    text("CRÉDITOS",430,333);
    
    if (dentroBoton2 && estado.equals("ganar")){
    reiniciar();
    } else if (dentroBoton3 && estado.equals("ganar")){
      estado = "creditos";
    }
     
   //PANTALLA DE CRÉDITOS
   
   }else if ( estado.equals("creditos") ) {
    creditos();
    
    if (dentroBoton4 && estado.equals("creditos")){
    reiniciar();
  }
  
   }else if ( estado.equals("perder") ) {
    
   background( #94D2E8);
   text( "¡PERDISTE!", width/2, 40 );  
   image(emoji, 200, 70, tam, tam);
   
   stroke(#4A64ED);
    strokeWeight(7);
    noFill();
    rect(200, 300, 200, 50);
    text("REINICIAR", 300, 320);
   
   
  if (dentroBoton5 && estado.equals("perder")){
    reiniciar();
  }
   }
}
   


void mousePressed() {
  
if ( estado.equals("inicio")&& mouseX > 200 && mouseX < 400 && mouseY > 300 &&  mouseY< 350) {
  dentroBoton1=true;
    estado = "instrucciones";
 }
  if ( estado.equals("instrucciones") && dist( mouseX, mouseY, width/2, height/2+100) <= 25 ) {
    estado = "jugando";
   
  }else if ( estado.equals("ganar")&& mouseX > 100 && mouseX < 250 && mouseY > 320 &&  mouseY< 350) {
    dentroBoton2=true;

  }else if ( estado.equals("ganar")&& mouseX > 350 && mouseX < 500 && mouseY > 320 &&  mouseY< 350) {
    dentroBoton3=true;

 }else if ( estado.equals("creditos")&& mouseX > 200 && mouseX < 400 && mouseY > 300 &&  mouseY< 350) {
    dentroBoton4=true;
 }else if ( estado.equals("perder")&& mouseX > 200 && mouseX < 400 && mouseY > 300 &&  mouseY< 350) {
   dentroBoton5=true;
 }
 }


void keyTyped() {
  
  //CAMBIAR DE PERSONAJE
  if (key== 'p') {
    cantidad++;
    if ( cantidad == personajes.length )
      cantidad = 0;
  }
}
