float pos; 
int cant;
int tam;

void setup() {  
  size(500, 500);
  pos=250; 
  cant=5;
  tam=width/cant;
}



void draw() {
  funcionesConFor();
}


void  keyPressed() {
 disminuir();
}

void mouseReleased() {
  reiniciar();
}
