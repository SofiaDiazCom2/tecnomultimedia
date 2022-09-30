// VIDEO EXPLICATIVO ==> https://youtu.be/oqzdRytNWf0

Fondo fondo;
Fondo elementos;

void setup(){
  
size(600,500);

fondo = new Fondo();
elementos = new Fondo();

}
void draw(){
  
  fondo.dibujarFondo();
  elementos.dibujarElementos();

  
}
