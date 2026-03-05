/*
scale.pde

author: christopher romo
created: 12/09/2024
*/

int cycle = 0;
int size1 = 75;
int size2 = 75;

float red = 0;
float green = 0;
float blue = 255;

void setup() {
  size(400,400,P3D);
  surface.setLocation(200, 200);
  noStroke();
} // setup

void draw() {
  lights();
  background(0);
  
  int invert = width - mouseY;
  
  if(mousePressed) {
    // if the cube 1 is not at maximum size, expand
    if (size1 < 135) {
      size1 += 1;
      red += 4.25;
      blue -= 4.25;
    }
    
    // draw cube 1
    pushMatrix();
    translate(250, 150, 0);
    rotateY(map(mouseX, 0, width, 0, PI));
    rotateZ(map(invert, 0, height, 0, PI));
    fill(red,0,blue);
    box(size1);
    popMatrix();
    
    // if the cube 2 is not at minimum size, shrink
    if (size2 > 15) {
      size2 -= 1;
      green += 4.25;
      blue -= 4.25;
    }
    
    // draw cube 2
    pushMatrix();
    translate(150, 250, 0);
    rotateY(map(mouseX, 0, width, 0, PI));
    rotateZ(map(invert, 0, height, 0, PI));
    fill(0,green,blue);
    box(size2);
    popMatrix();
  } else {
    // shrink cube 1 back to default size
    if (size1 > 75) {
      size1 -= 1;
      red -= 4.25;
      blue += 4.25;
    }
    
    // draw cube 1
    pushMatrix();
    translate(250, 150, 0);
    rotateY(map(mouseX, 0, width, 0, PI));
    rotateZ(map(invert, 0, height, 0, PI));
    fill(red,0,blue);
    box(size1);
    popMatrix();
    
    // expand cube 2 to default size
    if (size2 < 75) {
      size2 += 1;
      green -= 4.25;
      blue += 4.25;
    }
    
    // draw cube 2
    pushMatrix();
    translate(150, 250, 0);
    rotateY(map(mouseX, 0, width, 0, PI));
    rotateZ(map(invert, 0, height, 0, PI));
    fill(0,green,blue);
    box(size2);
    popMatrix();
  }
} // draw
