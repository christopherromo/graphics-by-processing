/*
texture.pde

author: christopher romo
created: 10/08/2024
*/

import java.util.ArrayList;
import java.util.Random;

ArrayList<Flower> flowers = new ArrayList<>();
Random rand = new Random();

void setup() {
  size(500,500);
  surface.setLocation(100, 100);
  background(152,255,152);  
} // setup

void draw() {
  // save random numbers into variables
  int offset1 = rand.nextInt(100);
  int offset2 = rand.nextInt(100);
  int offset3 = rand.nextInt(100);
  int offset4 = rand.nextInt(100);
  
  int coordX = rand.nextInt(500 - (-50) + 1) + (-50);
  int coordY = rand.nextInt(500 - (-50) + 1) + (-50);
  
  int green = rand.nextInt((255 - 100) + 1) + 100;
  
  // use variables to create lines
  stroke(50,green,50);
  line(coordX + offset1, coordY + offset2, coordX + offset3, coordY + offset4);
  line(coordX + offset2, coordY + offset1, coordX + offset4, coordY + offset3);
  line(coordX + offset3, coordY + offset4, coordX + offset1, coordY + offset2);
  line(coordX + offset4, coordY + offset3, coordX + offset2, coordY + offset1);
  
  int posX;
  int posY;
  
  // draw each flower in the array list
  for (Flower flower: flowers) {
    // flower location
    posX = flower.getPosX();
    posY = flower.getPosY();
    
    // petals
    stroke(255,0,0);
    fill(225,0,0);
    ellipse(posX + 25,posY + 25,50,50);
    ellipse(posX - 25,posY - 25,50,50);
    ellipse(posX - 25,posY + 25,50,50);
    ellipse(posX + 25,posY - 25,50,50);
    ellipse(posX + 50,posY,50,50);
    ellipse(posX - 50,posY,50,50);
    ellipse(posX,posY + 50,50,50);
    ellipse(posX,posY - 50,50,50);
  
    // center
    stroke(255,255,0);
    fill(225,225,0);
    ellipse(posX,posY,50,50);   
  }
} // draw

void mousePressed() {
  // creates a flower object
  
  Flower flower = new Flower(mouseX, mouseY);
  flowers.add(flower);
} // mousePressed

public class Flower {
  // instance variables
  int posX;
  int posY;
  
  // constructor that creates flower object.
  public Flower(int posX, int posY) {
    this.posX = posX;
    this.posY = posY;
  }
  
  // getters
  public int getPosX() {
    return posX;
  }
  
  public int getPosY() {
    return posY;
  }
} // Flower
