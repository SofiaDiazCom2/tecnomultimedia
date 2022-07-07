void inicio(){

image( fondo, 0, 0, 600, 400);

pushStyle();

if(mouseX > 200 && mouseX < 400 && mouseY > 300 &&  mouseY< 350){
 
noStroke();
fill(0);
rect(200, 325, 200, 50);
fill(255,0,0);
text("START", 300, 350);

}else{
  
noStroke();
fill(255, 0,0 );
rect(200, 325, 200, 50);
fill(0);
text("START", 300, 350);
}
popStyle();

if (dentroBoton1 && estado.equals("inicio")) {
  estado = "instrucciones";

}
}
