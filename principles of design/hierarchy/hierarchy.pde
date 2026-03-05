/*
hierarchy.pde

author: christopher romo
created: 12/09/2024
*/

int rotate = 360;

float currentStepMercury = 0;
float currentStepVenus = 0;
float currentStepEarth = 0;
float currentStepMars = 0;
float currentStepJupiter = 0;

color colorMercury = color(210,210,210);
color colorVenus = color(210,180,140);
color colorEarth = color(0,157,196);
color colorMars = color(185,72,78);
color colorJupiter = color(255,140,0);

PImage img;

void setup() {
  size(700, 699, P3D);
  surface.setLocation(10, 10);
  noStroke();
  sphereDetail(60);
  img = loadImage("stars.jpg"); // load the original image
} // setup

void draw() {
  background(0);
  
  image(img, 0, 0); // displays the image from point (0,0)
  img.loadPixels();
  
  // mercury
  drawPlanet(currentStepMercury,100,colorMercury,10);
  currentStepMercury += 0.5;
  
  // venus
  drawPlanet(currentStepVenus,138,colorVenus,15);
  currentStepVenus += 0.4;
  
  // earth
  drawPlanet(currentStepEarth,175,colorEarth,18);
  currentStepEarth += 0.3;
  
  // mars
  drawPlanet(currentStepMars,213,colorMars,13);
  currentStepMars += 0.2;
  
  // jupiter
  drawPlanet(currentStepJupiter,263,colorJupiter,25);
  currentStepJupiter += 0.1;
  
  // sun
  pushMatrix();
  lights();
  translate(width/2, height/2, 0);
  fill(255,255,0);
  sphere(50);
  popMatrix();
} // draw

void drawPlanet(float currentStep, int planetPos, color planetColor, int planetSize) {
  // draws a planet
  
  pushMatrix();
  pointLight(200, 200, 200, width/2, height/2, 0);
  translate(width/2, width/2, 0);
  rotate(TWO_PI / rotate * currentStep);
  translate(0, planetPos, 0);
  fill(planetColor);
  sphere(planetSize);
  popMatrix();
}
