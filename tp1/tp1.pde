String produccion,cast,cast2,cast3;
PFont fuenteImportada;
PImage ddakji,tarjetita;
int posY1,posY2,posY3,tam1,tam2;
float tam3,formas;
boolean dentroBoton1,dentroBoton2;
color azul,rojo;

void setup(){
  size(700,500);
  background(#338866);
  fuenteImportada=createFont("Montserrat-Black.ttf",30);
  frameRate(30);
    
  fill(255);
  produccion="Directed by  HWANG DONG-HYUK\nMusic by  JUNG JAE-IL\nExecutive producer  KIM JI-YEON\nPhotography  CHAE KYOUNG-SUN\nWriting by  HWANG DONG-HYUK";
  cast= "LEE JUNG-JAE\n\nJUNG HO-YEON\n\nPARK HAE-SOO";
  cast2= "OH YOUNG-SOO\n\nTRIPATHI ANUPAM\n\nWI HA-JOON";
  cast3= "HEO SUNG-TAE\n\nKIM JOO-RYUNG\n\nLEE YOO-MI";
  //IMAGENES
  ddakji=loadImage("ddakji.png");
  tarjetita=loadImage("tarjetita2.png");
  
  posY1=height+230;
  posY2= height+660;
  posY3= height+700;
  tam1=70;
  tam2=25;
  tam3=30;
  
 dentroBoton1= mouseX > 150 && mouseX < 300 && mouseY > 400 &&  mouseY< 450;
 dentroBoton2= mouseX >400 && mouseX < 550 && mouseY > 400 && mouseY < 450;
 
 azul = color(#2196f3);
 rojo= color(#F44336);
 
}

void draw(){
  background(#338866);
  image(ddakji,150,-50,400,400);
  println(mouseX,mouseY);
  textSize(30);
  textFont(fuenteImportada);
  fill(255);
  text("Would you like to play a game with me?",25,340);
 
 
 //BOTONES
 
 noFill();
 stroke(rojo);
 strokeWeight(5);
 rect(150,400,150,50);
 fill(#F44336);
 text("YES",195,435);
 
 noFill(); 
 stroke(azul); 
 rect(400,400,150,50);
 fill(#2196f3);
 text("NO", 455,435);
 
 
 
 //EMPIEZAN LOS CRÉDITOS
 if(dentroBoton1){
   background(255,255,0);
   inicio();
   titulo(); 
   fill(255);
   text(produccion, 100, 1100-frameCount*5);
   fill(#f252a7);
   text(cast,250,1450-frameCount*5);
   fill(#2995D6);
   text(cast2,250,1750-frameCount*5);
   fill(#16AA44);
   text(cast3,250,2050-frameCount*5);
 } 
 
 if(dentroBoton2){
   background(random(0,255));
   inicio();
   titulo();
   image(tarjetita,140,posY1,450,400);
   fill(255);
   textSize(tam3);
   text("We don't have many spots left.",150,posY2);
   fill(160,0,5);
   text("Give me a call.",150,posY3);
   }
 
 if( frameCount < 250 ){ 
    posY1 -= 2.5;
  }else if( frameCount > 250 && frameCount < 200 ){  
  }
  
  if( frameCount < 270 ){ 
    posY2 -= 2.6;
  }else if( frameCount > 270 && frameCount < 270 ){ 
    
  }else if( frameCount > 270 ){  
    tam3 = tam3 - 2;
  }
  
  if( frameCount < 270 ){  
    posY3 -= 2.6;
  }else if( frameCount > 270 && frameCount < 270 ){  
  } }
  
  

void mousePressed(){
  if( mouseX > 150 && mouseX < 300 && mouseY > 400 &&  mouseY< 450){
    dentroBoton1=true;
    
  }else if(mouseX >400 && mouseX < 550 && mouseY > 400 && mouseY < 450){
    dentroBoton2 = true;
} 
}

  
