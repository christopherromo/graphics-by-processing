/*
pattern.pde

author: christopher romo
created: 12/09/2024
*/

int move1 = 100;
int move2 = 250;
int move3 = 400;
int move4 = 550;
int move5 = 700;
int move6 = -50;

color cubeColor = color(57,255,20);
color sphereColor = color(255,0,255);

void setup() {
  size(500,500,P3D);
  surface.setLocation(200, 200);
  noStroke();
} // setup

void draw() {
  lights();
  background(0);  

  // increment move variables
  if (move1 == 700) {
    move1 = -200;
  }
  move1 += 1;
  if (move2 == 700) {
    move2 = -200;
  }
  move2 += 1;
  if (move3 == 700) {
    move3 = -200;
  }
  move3 += 1;
  if (move4 == 700) {
    move4 = -200;
  }
  move4 += 1;
  if (move5 == 700) {
    move5 = -200;
  }
  move5 += 1;
  if (move6 == 700) {
    move6 = -200;
  }
  move6 += 1;
   
  // call functions using the move variables
  
  // top row
  drawCube(move1,100,cubeColor);
  drawSphere(move2,100,sphereColor);
  drawCube(move3,100,cubeColor);
  drawSphere(move4,100,sphereColor);
  drawCube(move5,100,cubeColor);
  drawSphere(move6,100,sphereColor);
  
  // middle row
  drawSphere(move1,250,sphereColor);
  drawCube(move2,250,cubeColor);
  drawSphere(move3,250,sphereColor);
  drawCube(move4,250,cubeColor);
  drawSphere(move5,250,sphereColor);
  drawCube(move6,250,cubeColor);
  
  // bottom row
  drawCube(move1,400,cubeColor);
  drawSphere(move2,400,sphereColor);
  drawCube(move3,400,cubeColor);
  drawSphere(move4,400,sphereColor);
  drawCube(move5,400,cubeColor);
  drawSphere(move6,400,sphereColor);
} // draw

void drawCube(int x, int y, color theColor) {  
  // draws a cube
  
  pushMatrix();
  translate(x, y, 0);
  fill(theColor);
  box(75);
  popMatrix();  
} // drawCube

void drawSphere(int x, int y, color theColor) {
  // draws a sphere using variables
  
  pushMatrix();
  translate(x,y,0);
  fill(theColor);
  sphere(50);
  popMatrix();
} // drawSphere
