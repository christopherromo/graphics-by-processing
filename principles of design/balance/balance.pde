/*
balance.pde

author: christopher romo
created: 12/09/2024
*/

int cycle = 0;
int red = 255;
int green = 0;
int blue = 0;

void setup() {
  size(500,500,P3D);
  surface.setLocation(200, 200);
  noStroke();
} // setup

void draw() {
  lights();
  background(0);
  
  // cycle through hsv values to create a rainbow effect
  if(cycle == 0) {           // red 255, green++, blue 0
    green = green + 5;
    if(green == 255) {
      cycle += 1;
    }
  } else if(cycle == 1) {    // red--, green 255, blue 0
    red = red - 5;
    if(red == 0) {
      cycle += 1;
    }
  } else if(cycle == 2) {    // red 0, green 255, blue++
    blue = blue + 5;
    if(blue == 255) {
      cycle += 1;
    }
  } else if(cycle == 3) {    // red 0, green--, blue 255
    green = green - 5;
    if(green == 0) {
      cycle += 1;
    }
  } else if(cycle == 4) {    // red++, green 0, blue 255
    red = red + 5;
    if(red == 255) {
      cycle += 1;
    }
  } else {                   // red 255, green 0, blue--
    blue = blue - 5;
    if(blue == 0) {
      cycle = 0;
    }
  }
  
  // push default matrix onto the stack
  pushMatrix();
  
  // draw the cube
  translate(400, (height-mouseY), 0);
  int invert = width - mouseY;
  rotateY(map(mouseX, 0, width, 0, PI));
  rotateZ(map(invert, 0, height, 0, PI));
  fill(red,green,blue);
  box(100);
  
  // pop default matrix from the stack
  popMatrix();
  
  // draw the second opposing cube
  pushMatrix();
  translate(100, mouseY, 0);
  rotateY(map(mouseX, 0, width, 0, PI));
  rotateZ(map(invert, 0, height, 0, PI));
  fill(red,green,blue);
  box(100);
  popMatrix();
} // draw
