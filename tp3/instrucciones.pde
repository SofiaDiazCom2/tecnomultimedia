void instrucciones(){
  
image( fondo, 0, 0, 600, 400);

fill(#4B97B9);
noStroke();
rect(55,70,490,270);

fill(0);
textSize(17);
text( "INSTRUCCIONES\n\nIntenta que el\nvillano regrese a casa.\nAprieta la flecha ↑\npara saltar los charcos.\nPuedes cambiar el personaje\napretando la tecla 'p'.", width/2, 170 );  
pushStyle();

if ( dist( mouseX, mouseY, width/2, height/2+100) <= 25 ) {
stroke(0);
strokeWeight(7);
fill( #1E2D76 );
} else {
strokeWeight(7);
stroke( #1E2D76);  
fill( 0 );
}
ellipse( width/2, height/2+100, 50, 50 );
popStyle();
}
