/*
value.pde

author: christopher romo
created: 10/08/2024
*/

color sun = color(255, 204, 51);

color sky = color(181,214,224);
color sky2 = color(255,239,122);
color sky3 = color(255,107,62);
color sky4 = color(39,33,78);

color ground = color(253,216,164);
color ground2 = lerpColor(ground, sky2, 0.5);
color ground3 = lerpColor(ground, sky3, 0.5);
color ground4 = lerpColor(ground, sky4, 0.5);

color frontPyramids = color(223,134,76);
color frontPyramids2 = lerpColor(frontPyramids, sky2, 0.5);
color frontPyramids3 = lerpColor(frontPyramids, sky3, 0.5);
color frontPyramids4 = lerpColor(frontPyramids, sky4, 0.5);

color backPyramid = color(165,94,48);
color backPyramid2 = lerpColor(backPyramid, sky2, 0.5);
color backPyramid3 = lerpColor(backPyramid, sky3, 0.5);
color backPyramid4 = lerpColor(backPyramid, sky4, 0.5);

void setup() {
  size(500,500);
  surface.setLocation(100, 100);
} // setup

void draw() {
  // draw a scene based on the location of mouse
  if (mouseX < 300 && mouseX > 200 && mouseY < 200 && mouseY > 100) {  
    drawScene(sky,backPyramid,frontPyramids,ground);
  } else if (mouseX < 400 && mouseX > 100 && mouseY < 300 && mouseY > 0) {
    drawScene(sky2,backPyramid2,frontPyramids2,ground2);
  } else if (mouseX < 500 && mouseX > 0 && mouseY < 400 && mouseY > 0) {
    drawScene(sky3,backPyramid3,frontPyramids3,ground3);
  } else {
    drawScene(sky4,backPyramid4,frontPyramids4,ground4);
  }
} // draw

void drawScene(color skyColor, color backPyramidColor, color frontPyramidsColor, color groundColor) {
  // draws the scene
  
  // draw the sky
  background(skyColor);
  
  // draw the sun
  stroke(sun);
  fill(sun);
  ellipse(mouseX,mouseY,50,50);
    
  // draw the pyramids
  stroke(backPyramidColor);
  fill(backPyramidColor);
  quad(100,400,250,200,400,400,250,500);
    
  stroke(frontPyramidsColor);
  fill(frontPyramidsColor);
  quad(0,400,100,300,200,400,100,500);
  quad(300,400,400,300,500,400,400,500);
  
  // draw the ground
  stroke(groundColor);
  fill(groundColor);
  quad(0,400,500,400,500,500,0,500);
} // drawScene
