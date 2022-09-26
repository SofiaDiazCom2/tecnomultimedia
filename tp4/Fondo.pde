
class Fondo{

// PROPIEDADES (variables)

 color piso; 
 color cielo; 
 int tamanio; 
 PImage arbol;
 PImage charco;
 PImage nubes;


 
Personaje jack;
Nieve copos;

//CONSTRUCTOR (inicializar las variables)
 Fondo(){

 piso = color(#B2B3FF);
 cielo= color(#06071A);
 tamanio= 200;
 
 arbol = loadImage("arbol.png");
 charco = loadImage("charco.png");
 nubes = loadImage("nubes.png");

jack = new Personaje();
copos = new Nieve();

 }


//MÉTODOS (funciones)

void dibujarFondo(){
  
pushStyle();
fill(piso);
noStroke();
rect(0,250,600,250);
popStyle();

pushStyle();
fill(cielo);
noStroke();
rect(0,0,600,250);
popStyle();

}

void dibujarElementos(){
  
 for (int x=0; x<5000; x+=70) {
    
    image(arbol, x-frameCount*5, 100, tamanio, tamanio);
  }
  
  for (int x=500; x<5000; x+=400) {
    
    image(charco, x-frameCount*5, 300, 100, 50);  
    //caida((x-frameCount*5)+45, 300);
    
  }
  
  for (int x=0; x<5000; x+=300) {
    
    image(nubes, x-frameCount*5, 30, 100, 100);  
    //caida((x-frameCount*5)+45, 300);
    
  }
  
  jack.dibujar();
  jack.saltar();
  copos.dibujar();
  
}

}
