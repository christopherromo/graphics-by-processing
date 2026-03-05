/*
harmony.pde

author: christopher romo
created: 12/09/2024
*/

import java.lang.*;
import java.util.Random;

int red = 0;
int green = 0;
int blue = 0;

void setup() {
  size(500,500,P3D);
  surface.setLocation(200, 200);
  noStroke();  
} // setup

void draw() {
  lights();  
} // draw

void mouseClicked() {
  // creates a spiral shape
  
  background(0);
   
  // translate coordinate system to the point the mouse is at
  translate(mouseX,mouseY,0);
    
  // use Math.random to generate a frequency
  double randomFrequency = Math.random();
  float randomFloat = (float) randomFrequency;
    
  // generate number of curves
  Random rand = new Random();
  int numCurves = rand.nextInt(10 - 5 + 1) + 5;
  
  // generate random colors & gradient choice
  red = rand.nextInt(255);
  green = rand.nextInt(255);
  blue = rand.nextInt(255);
  int gradient = rand.nextInt(5);
  
  // for loop for each arm
  for (int i = 0; i < numCurves; i++) {
    pushMatrix();
      
    // rotate around the center
    rotate(TWO_PI / numCurves * i);
      
    // call the drawArm function for an individual arm
    drawArm(0,0,randomFloat,red,green,blue,gradient,20);
    
    popMatrix();
  }
} // mouseClicked

void drawArm(float x, float y, float frequency, int red, int green, int blue, int gradient, int baseCase) {
  // draws an arm by using recursion
  
  if (baseCase <= 0) {
    // return if all spheres in arm have been drawn
    return;
  } else {
    // draw the sphere
    pushMatrix();
    translate(x,y,0);
    fill(red,green,blue);
    sphere(25);
    popMatrix();
    
    // use sin function to create curve
    x = x + sin(radians(y * frequency)) * 30;
    
    // recursive call depending on the gradient choice
    if (gradient == 0) {             // color -> white
      drawArm(x,y+30,frequency,red+13,green+13,blue+13,gradient,baseCase-1);
    } else if (gradient == 1) {      // color -> black
      drawArm(x,y+30,frequency,red-13,green-13,blue-13,gradient,baseCase-1);
    } else if (gradient == 2) {      // color, red++
      drawArm(x,y+30,frequency,red+13,green,blue,gradient,baseCase-1);
    } else if (gradient == 3) {      // color, green++
      drawArm(x,y+30,frequency,red,green+13,blue,gradient,baseCase-1);
    } else {                         // color, blue++
      drawArm(x,y+30,frequency,red,green,blue+13,gradient,baseCase-1);
    } 
  }
} // drawArm
