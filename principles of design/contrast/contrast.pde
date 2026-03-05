/*
contrast.pde

author: christopher romo
created: 12/09/2024
*/

int turn = 1;
int cycle = 0;

color starColor = color(255);
color backgroundColor = color(0);

void setup() {
  size(500,500,P3D);
  surface.setLocation(200, 200);
  noStroke();
} // setup

void draw() {
  lights();
  
  // check cycle and adjust variables
  if (cycle == 0) {            // black and white (high)
    starColor = color(255,255,255);
    backgroundColor = color(0,0,0);
  } else if (cycle == 1) {     // baby blue and icy white (low)
    starColor = color(213,255,255);
    backgroundColor = color(240,248,254);
  } else if (cycle == 2) {     // orange and blue (high)
    starColor = color(255,95,31);
    backgroundColor = color(125,249,255);
  } else if (cycle == 3) {     // maroon and violet (low)
    starColor = color(48,25,52);
    backgroundColor = color(50,0,0);
  } else if (cycle == 4) {     // green and red (high)
    starColor = color(255,0,0);
    backgroundColor = color(57,255,20);
  } else if (cycle == 5) {     // baby pink and lavender (low)
    starColor = color(244,194,194);
    backgroundColor = color(211,211,255);
  } else if (cycle == 6) {     // yellow and purple (high)
    starColor = color(191,64,191);
    backgroundColor = color(224,231,34);
  } else if (cycle == 7) {     // sage green and tan (low)
    starColor = color(178,172,136);
    backgroundColor = color(210,180,140);
  }
  
  background(backgroundColor);
  
  turn += 1;
  
  // draw five stars
  drawStar(250,250,100,starColor);
  drawStar(125,375,50,starColor);
  drawStar(375,375,50,starColor);
  drawStar(125,125,50,starColor);
  drawStar(375,125,50,starColor);
} // draw

void mouseClicked() {
  // increments cycle
  
  if (cycle == 7) {
    cycle = 0;
  } else {
    cycle += 1;
  }
} // mouseClicked

void drawStar(int x, int y, int size, color starColor) {
  // draws a rotating star
  
  // draw the first cube
  pushMatrix();
  translate(x, y, 0);
  rotateY(radians(turn));
  fill(starColor);
  box(size);
  popMatrix();  
  
  // draw the second cube
  pushMatrix();
  translate(x, y, 0);
  rotateY(radians(turn));
  rotateZ(radians(45));
  rotateX(radians(45));
  fill(starColor);
  box(size);
  popMatrix();
} // drawStar
