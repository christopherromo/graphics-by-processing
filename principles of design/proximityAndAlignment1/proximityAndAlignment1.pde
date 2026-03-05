/*
proximityAndAlignment1.pde

author: christopher romo
created: 12/09/2024
*/

int moveX1 = 250;
int moveY1 = 50;
int moveX2 = 450;
int moveY2 = 250;
int moveX3 = 250;
int moveY3 = 450;
int moveX4 = 50;
int moveY4 = 250;

float red = 0;
float green = 0;
float blue = 0;

float redBackground = 255;
float greenBackground = 255;
float blueBackground = 255;

void setup() {
  size(500,500,P3D);
  surface.setLocation(200, 200);
  noStroke();
} // setup

void draw() {
  lights();

  if(mousePressed) {
    if (moveY1 < 170) {
      moveY1 += 5;
      moveX2 -= 5;
      moveY3 -= 5;
      moveX4 += 5;
      
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
            
    // draw line of spheres
    drawSphere(moveX1,moveY1,red,green,blue);
    drawSphere(moveX1,moveY1-80,red,green,blue);
    drawSphere(moveX1,moveY1-155,red,green,blue);
    drawSphere(moveX1,moveY1-230,red,green,blue);
    
    drawSphere(moveX2,moveY2,red,green,blue);
    drawSphere(moveX2+80,moveY2,red,green,blue);
    drawSphere(moveX2+155,moveY2,red,green,blue);
    drawSphere(moveX2+230,moveY2,red,green,blue);
    
    drawSphere(moveX3,moveY3,red,green,blue);
    drawSphere(moveX3,moveY3+80,red,green,blue);
    drawSphere(moveX3,moveY3+155,red,green,blue);
    drawSphere(moveX3,moveY3+230,red,green,blue);
    
    drawSphere(moveX4,moveY4,red,green,blue);
    drawSphere(moveX4-80,moveY4,red,green,blue);
    drawSphere(moveX4-155,moveY4,red,green,blue);
    drawSphere(moveX4-230,moveY4,red,green,blue);
  } else {
    if (moveY1 > 50) {
      moveY1 -= 5;
      moveX2 += 5;
      moveY3 += 5;
      moveX4 -= 5;
      
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
    
    // draw line of spheres
    drawSphere(moveX1,moveY1,red,green,blue);
    drawSphere(moveX1,moveY1-80,red,green,blue);
    drawSphere(moveX1,moveY1-155,red,green,blue);
    drawSphere(moveX1,moveY1-230,red,green,blue);
    
    drawSphere(moveX2,moveY2,red,green,blue);
    drawSphere(moveX2+80,moveY2,red,green,blue);
    drawSphere(moveX2+155,moveY2,red,green,blue);
    drawSphere(moveX2+230,moveY2,red,green,blue);
    
    drawSphere(moveX3,moveY3,red,green,blue);
    drawSphere(moveX3,moveY3+80,red,green,blue);
    drawSphere(moveX3,moveY3+155,red,green,blue);
    drawSphere(moveX3,moveY3+230,red,green,blue);
    
    drawSphere(moveX4,moveY4,red,green,blue);
    drawSphere(moveX4-80,moveY4,red,green,blue);
    drawSphere(moveX4-155,moveY4,red,green,blue);
    drawSphere(moveX4-230,moveY4,red,green,blue);
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
