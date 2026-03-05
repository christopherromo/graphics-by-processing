/*
shape.pde

author: christopher romo
created: 10/08/2024
*/

int count = 0;

void setup() {
  size(500,500);
  surface.setLocation(100, 100);
  background(152,255,152); 
} // setup

void draw() {
  // change scene based on count
  if (count == 0) {
    // display circle scene
    stroke(102,0,0);
    fill(255,153,153);
    ellipse(mouseX,mouseY,100,100);
  } else if (count == 1) {
    // display the square scene
    stroke(0,51,102);
    fill(153,204,255);
    rect(mouseX,mouseY,100,100);
  } else {
    // display the triangle scene
    stroke(102,102,0);
    fill(255,255,153);
    triangle(mouseX,mouseY,(mouseX+100),(mouseY+100),(mouseX-100),(mouseY+100));
  } 
} // draw

void mousePressed() {
  // clears the screen and changes count
  
  if (count == 0) {
    background(255,204,153);
    count += 1;
  } else if (count == 1) {
    background(204,153,255);
    count += 1;
  } else {
    background(152,255,152);
    count = 0;
  }
} // mousePressed
