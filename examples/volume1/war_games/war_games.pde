// Manuale di Programmazione Cinematografica
// Daniele Olmisani, 2015

// Wargames (1983)


final color PAPER = color(30);
final color INK = color(0, 185, 85);


void setup() {  
  size(480, 640);
  noLoop();
}


void draw() {
  
  final float S =  min(width, height);
  final float U = 0.002;
  
  scale(0.1*S);
  
  background(PAPER);
  
  stroke(INK);
  strokeWeight(80*U);
  
  noFill();
  
  line(4, 2, 4, 8);
  line(6, 2, 6, 8);
  
  line(2, 4, 8, 4);
  line(2, 6, 8, 6);
  
  ellipse(3, 3, 1, 1);
  ellipse(7, 5, 1, 1);
  ellipse(5, 5, 1, 1);
  ellipse(5, 7, 1, 1);
  ellipse(7, 3, 1, 1);
  
  line(5, 2.5, 5, 3.5);
  line(3, 4.5, 3, 5.5);
  line(3, 6.5, 3, 7.5);
  line(7, 6.5, 7, 7.5);
  
  save("war-games.png"); 
}
