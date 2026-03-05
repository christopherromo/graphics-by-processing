/*
color.pde

author: christopher romo
created: 10/08/2024
*/

import java.util.Random;
Random rand = new Random();

void setup() {
  size(500,500);
  surface.setLocation(100, 100);
  background(0);
} // setup

void draw() {
  // save random numbers into variables
  int posX = rand.nextInt(500);
  int posY = rand.nextInt(500);
  
  int size = rand.nextInt(50);
  
  int red = rand.nextInt(255);
  int green = rand.nextInt(255);
  int blue = rand.nextInt(255);
  
  // use variables to draw circles
  stroke(red,green,blue);
  fill(red,green,blue);
  ellipse(posX,posY,size,size);  
} // draw

void mousePressed() {
  // resets the background
  
  background(0);
} // mousePressed
