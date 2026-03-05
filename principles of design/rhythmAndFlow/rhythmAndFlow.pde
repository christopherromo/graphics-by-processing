/*
rhythmAndFlow.pde

author: christopher romo
created: 12/09/2024
*/

Wave smallWave = new Wave(0,191,0,50,175,200,0.5);
Wave mediumWave = new Wave(0,283,0,100,275,300,0.5);
Wave largeWave = new Wave(0,375,0,150,375,400,0.5);

void setup() {
  size(500,500);
  surface.setLocation(100, 100);
  noStroke();
} // setup

void draw() {
  background(135,206,250);  

  // draw a sun in the corner
  fill(252,235,74);
  ellipse(400,50,50,50);
  
  fill(32,178,170,90);
  
  // draw small waves
  for (int i = -50; i <= 550; i += 50) {
    drawSmallTriangle(smallWave.getHorizontalPos()+i,smallWave.getVerticalPos());
  }
  rect(smallWave.getHorizontalPos()-50,smallWave.getVerticalPos(),550,600);

  // draw medium waves
  for (int i = -100; i <= 500; i += 100) {
    drawMediumTriangle(mediumWave.getHorizontalPos()+i,mediumWave.getVerticalPos());
  }
  rect(mediumWave.getHorizontalPos()-100,mediumWave.getVerticalPos(),600,600);
   
  // draw large waves
  for (int i = -150; i <= 750; i += 150) {
    drawLargeTriangle(largeWave.getHorizontalPos()+i,largeWave.getVerticalPos());
  }
  rect(largeWave.getHorizontalPos()-150,largeWave.getVerticalPos(),750,600);
  
  // update the waves
  smallWave.updateWave();
  mediumWave.updateWave();
  largeWave.updateWave();
} // draw

void drawSmallTriangle(float x, float y) {
  // draws a small triangle
  
  triangle(x,y,x+25,y-25,x+50,y);
} // drawSmallTriangle

void drawMediumTriangle(float x, float y) {
  // draws a medium triangle
  
  triangle(x,y,x+50,y-50,x+100,y);
} // drawMediumTriangle

void drawLargeTriangle(float x, float y) {
  // draws a large triangle
  
  triangle(x,y,x+75,y-75,x+150,y);
} // drawLargeTriangle

public class Wave {
  // instance variables
  float horizontalPos;
  float verticalPos;
  
  float minX;
  float maxX;
  float minY;
  float maxY;
  
  float speed;
  int horizontalDir;
  int verticalDir;
  
  // constructor that creates a wave object.
  public Wave (float horizontalPos, float verticalPos, float minX, float maxX, float minY, float maxY, float speed) {
    this.horizontalPos = horizontalPos;
    this.verticalPos = verticalPos;
  
    this.minX = minX;
    this.maxX = maxX;
    this.minY = minY;
    this.maxY = maxY;
  
    this.speed = speed;
    horizontalDir = 1;
    verticalDir = 1;
  }
  
  // getters
  public float getHorizontalPos() {
    return horizontalPos;
  }
  
  public float getVerticalPos() {
    return verticalPos;
  }
  
  public void updateWave() {
    // updates the wave based on current position
    
    horizontalPos += speed * horizontalDir;
    verticalPos += speed * verticalDir;

    if (horizontalPos >= maxX || horizontalPos <= minX) {
      horizontalDir *= -1;
    }

    if (verticalPos >= maxY || verticalPos <= minY) {
      verticalDir *= -1;
    }
  }
} // Wave
