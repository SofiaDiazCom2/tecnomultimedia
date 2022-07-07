PImage arbol, charco, copos, chimenea, emoji, fondo;
PImage personajes[] = new PImage[4];
PFont letras;

int cantidad = 0;
int cant, tam, saltar;
int velocidadSalto = 7;
int posX = 50;
int posY = 200;
int topePiso = 200;
int topeSalto= 90;
int contadorTiempo;

float frameCount=0;


boolean personajeSaltando;
boolean dentroBoton1;
boolean dentroBoton2;
boolean dentroBoton3;

String estado;

void setup() {

  size(600, 400);

  textSize( 24 );
  textAlign( CENTER, CENTER );

  estado = "inicio";
  contadorTiempo = 0;


  arbol= loadImage("arbol.png");
  copos= loadImage("copos.png");
  charco= loadImage("charco.png");
  chimenea= loadImage("chimenea.png");
  emoji= loadImage("emoji.png");
  fondo= loadImage("fondo.jpg");
  letras = createFont("letras.ttf", 30);


  personajes[0]= loadImage("jack.png");
  personajes[1]= loadImage("pennywise.png");
  personajes[2]= loadImage("chucky.png");
  personajes[3]= loadImage("joker.png");

  tam= 200;
  cant = 300;

  dentroBoton1= mouseX > 200 && mouseX < 400 && mouseY > 300 &&  mouseY< 350;
  dentroBoton2= mouseX > 100 && mouseX < 250 && mouseY > 320 &&  mouseY< 350;
  dentroBoton3= mouseX > 350 && mouseX < 500 && mouseY > 320 &&  mouseY< 350;
}

void draw() {
  
  textFont(letras);

  //PANTALLA DE INICIO

  if ( estado.equals("inicio") ) {
    inicio();

    //PANTALLA DE INSTRUCCIONES
  } 
  
  if ( estado.equals("instrucciones") ) {
    instrucciones();

    //PANTALLA DEL JUEGO
  } if ( estado.equals("jugando") ) {
    jugando();
    calcularMovimiento();
    contadorTiempo++;

    //PANTALLA DE ¡GANASTE!
  } if ( estado.equals("ganar") ) {
    
    ganar();
    
    //PANTALLA DE CRÉDITOS
  } if ( estado.equals("creditos") ) {
    
    creditos();
    
    //PANTALLA DE ¡PERDISTE!
  }  if ( estado.equals("perder") ) {
    
    perder();
  }
}

void mouseClicked() {

  if ( estado.equals("inicio")&& mouseX > 200 && mouseX < 400 && mouseY > 300 &&  mouseY< 350) {
    dentroBoton1=true;
    estado = "instrucciones";
  }
  if ( estado.equals("instrucciones") && dist( mouseX, mouseY, width/2, height/2+100) <= 25 ) {
    estado = "jugando";
    
  } else if ( estado.equals("ganar")&& mouseX > 100 && mouseX < 250 && mouseY > 320 &&  mouseY< 350) {
    dentroBoton2=true;
    
  } else if ( estado.equals("ganar")&& mouseX > 350 && mouseX < 500 && mouseY > 320 &&  mouseY< 350) {
    dentroBoton3=true;
    
 
}
}



 void  keyPressed(){
  
  if (key== 'p') {
    cantidad++;
    if ( cantidad == personajes.length )
      cantidad = 0;
  } 
   
 if ( keyCode == ENTER ) {
   
    if ( estado.equals("perder") || estado.equals("creditos") ) {
      
  reiniciar();

    }
  }
  }

void reiniciar(){
  
  frameCount=0;
    
  estado = "inicio";
  contadorTiempo = 0;
  tam= 200;
  cant = 300;

  dentroBoton1= mouseX > 200 && mouseX < 400 && mouseY > 300 &&  mouseY< 350;
  dentroBoton2= mouseX > 100 && mouseX < 250 && mouseY > 320 &&  mouseY< 350;
  dentroBoton3= mouseX > 350 && mouseX < 500 && mouseY > 320 &&  mouseY< 350;
    
    }
    
