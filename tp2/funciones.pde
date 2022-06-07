void funcionesConFor() {
  background(0);
  for (int x=0; x<cant; x++) {  
    for (int y=0; y<cant; y++) {
      for (int i=100; i>5; i-=10) {
        
        rectMode(CENTER);
        
        fill(255, 0, 0);
        strokeWeight(3);
        stroke(0, 0, 255);
        
        rect(x*tam+50, y*tam+50, i, i); //acción

        if ((i%2==0)&&(mousePressed)) {
          
          rectMode(CENTER);
          stroke(0, 255, 50);
          fill(100, random(255), random(255));
          rect(x*tam+50, y*tam+50, i, i);
        }
      }
    }
  }
}

void disminuir() {
  cant--;
}
void reiniciar() {
  cant=5;
}
