/*
emphasis.pde

author: christopher romo
created: 12/09/2024
*/

void setup() {
  size(800, 480, P3D);
  surface.setLocation(200, 200);
  noStroke();
  fill(204);
  sphereDetail(60);
} // setup

void draw() {
  background(20,0,0);
  
  // set ambient lighting
  ambientLight(50,0,0);
  
  // light the bottom of the spheres
  directionalLight(139, 0, 0, 0, -1, 0);
  
  // draw the sphere on the right
  pushMatrix();
  translate(667, height/2, 0);
  sphere(33);
  popMatrix();
  
  // draw the sphere on the left
  pushMatrix();
  translate(133, height/2, 0);
  sphere(33);
  popMatrix();
  
  // set the pointed light lighting
  pointLight(253, 222, 108, width/2, -200, 0);
  
  // moving spotlight that follows the mouse
  spotLight(255, 192, 203, mouseX, mouseY, 600, 0, 0, -1, PI/2, 600);

  // draw the sphere in the middle
  pushMatrix();
  translate(width/2, height/2, 0);
  sphere(133);
  popMatrix();
} // draw
