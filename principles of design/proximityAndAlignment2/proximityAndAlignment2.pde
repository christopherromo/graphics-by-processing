/*
proximityAndAlignment2.pde

author: christopher romo
created: 12/09/2024
*/

int moveX1 = 50;
int moveY1 = 50;
int moveX2 = 450;
int moveY2 = 50;
int moveX3 = 450;
int moveY3 = 450;
int moveX4 = 50;
int moveY4 = 450;

float red = 255;
float green = 255;
float blue = 255;

float redBackground = 0;
float greenBackground = 0;
float blueBackground = 0;

void setup() {
  size(500,500,P3D);
  surface.setLocation(200, 200);
  noStroke();
} // setup

void draw() {
  lights();
  
  if(mousePressed) {
    if (moveX1 < 175) {
      moveX1 += 5;
      moveY1 += 5;
      moveX2 -= 5;
      moveY2 += 5;
      moveX3 -= 5;
      moveY3 -= 5;
      moveX4 += 5;
      moveY4 -= 5;
      
      red -= 12;
      green -= 12;
      blue -= 12;
      
      redBackground += 12;
      greenBackground += 12;
      blueBackground += 12;
    }
    
    background(redBackground,greenBackground,blueBackground);
    
    // draw sphere in the middle
    drawSphere(width/2,height/2,red,green,blue);
            
    // draw diagonal spheres
    drawSphere(moveX1,moveY1,red,green,blue);
    drawSphere(moveX1-75,moveY1-75,red,green,blue);
    drawSphere(moveX1-150,moveY1-150,red,green,blue);
    drawSphere(moveX1-225,moveY1-225,red,green,blue);
    
    drawSphere(moveX2,moveY2,red,green,blue);
    drawSphere(moveX2+75,moveY2-75,red,green,blue);
    drawSphere(moveX2+150,moveY2-150,red,green,blue);
    drawSphere(moveX2+225,moveY2-225,red,green,blue);
    
    drawSphere(moveX3,moveY3,red,green,blue);
    drawSphere(moveX3+75,moveY3+75,red,green,blue);
    drawSphere(moveX3+150,moveY3+150,red,green,blue);
    drawSphere(moveX3+225,moveY3+225,red,green,blue);
    
    drawSphere(moveX4,moveY4,red,green,blue);
    drawSphere(moveX4-75,moveY4+75,red,green,blue);
    drawSphere(moveX4-150,moveY4+150,red,green,blue);
    drawSphere(moveX4-225,moveY4+225,red,green,blue);
  } else {
    if (moveX1 > 50) {
      moveX1 -= 5;
      moveY1 -= 5;
      moveX2 += 5;
      moveY2 -= 5;
      moveX3 += 5;
      moveY3 += 5;
      moveX4 -= 5;
      moveY4 += 5;
      
      red += 12;
      green += 12;
      blue += 12;
      
      redBackground -= 12;
      greenBackground -= 12;
      blueBackground -= 12;
    }
    
    background(redBackground,greenBackground,blueBackground);
    
    // draw sphere in the middle
    drawSphere(width/2,height/2,red,green,blue);
    
    // draw diagonal spheres
    drawSphere(moveX1,moveY1,red,green,blue);
    drawSphere(moveX1-75,moveY1-75,red,green,blue);
    drawSphere(moveX1-150,moveY1-150,red,green,blue);
    drawSphere(moveX1-225,moveY1-225,red,green,blue);
    
    drawSphere(moveX2,moveY2,red,green,blue);
    drawSphere(moveX2+75,moveY2-75,red,green,blue);
    drawSphere(moveX2+150,moveY2-150,red,green,blue);
    drawSphere(moveX2+225,moveY2-225,red,green,blue);
    
    drawSphere(moveX3,moveY3,red,green,blue);
    drawSphere(moveX3+75,moveY3+75,red,green,blue);
    drawSphere(moveX3+150,moveY3+150,red,green,blue);
    drawSphere(moveX3+225,moveY3+225,red,green,blue);
    
    drawSphere(moveX4,moveY4,red,green,blue);
    drawSphere(moveX4-75,moveY4+75,red,green,blue);
    drawSphere(moveX4-150,moveY4+150,red,green,blue);
    drawSphere(moveX4-225,moveY4+225,red,green,blue);
  }
} // draw

void drawSphere(int x, int y, float red, float green, float blue) {
  // draws a sphere
  
  pushMatrix();
  translate(x, y, 0);
  fill(red,green,blue);
  sphere(25);
  popMatrix();
} // drawSphere
