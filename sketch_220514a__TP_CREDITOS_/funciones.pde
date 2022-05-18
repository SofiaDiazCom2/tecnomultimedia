void inicio(){
  noFill();
  strokeWeight(15);
  stroke(160,0,5,80);
  circle(350,600-frameCount*5,tam1);
  triangle(270,720-frameCount*5,350,610-frameCount*5,430,720-frameCount*5);
  rectMode(CENTER);
  rect(350,810-frameCount*5,170,130);
  circle(350,880-frameCount*5,tam1);
}

void titulo(){
  noFill();
  strokeWeight(12);
  
  stroke(255);
  
  line(150,750-frameCount*5,150,720-frameCount*5);
  line(100,750-frameCount*5,170,750-frameCount*5);
  line(190,700-frameCount*5,250,700-frameCount*5);
  
  line(280,720-frameCount*5,280,660-frameCount*5);
  line(330,700-frameCount*5,350,700-frameCount*5);
  line(350,720-frameCount*5,350,660-frameCount*5);
  
  line(410,700-frameCount*5,450,700-frameCount*5);
  line(450,700-frameCount*5,400,760-frameCount*5);
  line(425,730-frameCount*5,470,730-frameCount*5);
  line(470,700-frameCount*5,470,750-frameCount*5);
  line(490,700-frameCount*5,490,790-frameCount*5);
  line(575,660-frameCount*5,575,700-frameCount*5);
  
  circle(270,745-frameCount*5,tam2);
  circle(315,700-frameCount*5,tam2);
  circle(530,690-frameCount*5,tam2);
  
  stroke(#f252a7);
  rect(550,740-frameCount*5,50,tam2*2);
  circle(150,700-frameCount*5,tam1/2);
  triangle(200,730-frameCount*5,220,700-frameCount*5,240,730-frameCount*5);
  
}
