// Manuale di Programmazione Cinematografica
// Daniele Olmisani, 2019

// Wreck-It Ralph (2012)


final color PAPER = color(0);
final color INK1 = color(255, 220, 25);
final color INK2 = color(250, 180, 55);
final color INK3 = color(20, 115, 180);


void setup() {
  size(480, 640);
  noLoop();
}

void draw() {
  
  final float S =  min(width, height);
  final float U = 0.002;
  
  randomSeed(0);
  
  translate(0.5*width, 0.6*height);
  scale(S);
  
  background(PAPER);
  
  fill(INK2);
  stroke(INK1);
  strokeWeight(20*U);
  
  ellipse(0.0 ,0.0, 0.4, 0.4);
  
  noStroke();
  fill(INK1);
  drawStar(0.00, 0.00, 0.20, 0.08);
  
  rectMode(CENTER);
  rect(0.0, -0.2, 0.2, 0.05);
  
  fill(INK3);
  rectMode(CORNERS);
  rect(-0.09, -0.7, 0.09, 0.3);
 
  save("wreck-it-ralph.png");
}


void drawStar(float x, float y, float r1, float r2) {
  
  float angle = TWO_PI / 5;
  float halfAngle = angle/2.0;
  beginShape();
  for (float a = 0.5*halfAngle; a < TWO_PI; a += angle) {
    float sx = x + cos(a) * r2;
    float sy = y + sin(a) * r2;
    vertex(sx, sy);
    sx = x + cos(a+halfAngle) * r1;
    sy = y + sin(a+halfAngle) * r1;
    vertex(sx, sy);
  }
  endShape(CLOSE);
}
