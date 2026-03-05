/*
line.pde

author: christopher romo
created: 10/08/2024
*/

// setup function happens only once
void setup() {
  // size function defines the canvas size
  size(500,500);
  
  // set the location on the desktop
  surface.setLocation(100, 100);
  
  // background function defines the canvas color
  background(153,255,255);
} //setup

// draw function loops continuously
void draw() {
  // stroke function defines the color of line
  stroke(0,51,102);
  
  // line starts at (250,250) and ends at mouse position
  line(250,250,mouseX,mouseY);
} // draw
