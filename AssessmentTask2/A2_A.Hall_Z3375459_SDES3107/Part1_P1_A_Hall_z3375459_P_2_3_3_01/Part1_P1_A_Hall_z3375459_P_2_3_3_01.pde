// Part1 [TEXT] - Project 1 - Alexandra Hall - Z3375459

// P_2_3_3_01.pde
// 
// Generative Gestaltung, ISBN: 978-3-87439-759-9
// First Edition, Hermann Schmidt, Mainz, 2009
// Hartmut Bohnacker, Benedikt Gross, Julia Laub, Claudius Lazzeroni
// Copyright 2009 Hartmut Bohnacker, Benedikt Gross, Julia Laub, Claudius Lazzeroni
//
// http://www.generative-gestaltung.de
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at http://www.apache.org/licenses/LICENSE-2.0
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

/**
 * draw tool. shows how to draw with dynamic elements. 
 * 
 * MOUSE
 * drag                : draw with text
 * 
 * KEYS
 * del, backspace      : clear screen
 * arrow up            : angle distortion +
 * arrow down          : angle distortion -
 * s                   : save png
 * r                   : start pdf recording
 * e                   : stop pdf recording
 */

import processing.pdf.*;
import java.util.Calendar;
import java.awt.*; 
import java.applet.*;
import java.util.Random;


boolean recordPDF = false;

float x = 0, y = 0;
float stepSize = 5.0;

// TEXT, FONT, SIZE  CHNAGED.
PFont font;
String letters = "I am looking forward to never having to coding ever, ever, again! ";
// MIN FONT SIZE INCREASED 
int fontSizeMin = 10;
float angleDistortion = 0.0;

int counter = 0;

// NEW INTEGER CREATED TO CHANGE COLOUR BASED ON POSITION OF MOUSE.
int colour1 = 000;
int colour2= 000;
int colour3 = 000;

// THESE 2 INTEGER VARIABLES SET THE WIDTH AND THE HEIGHT OF THE DISPLAY. 
// USED TO GENERATE RANDOM POSITION (USING 'M' KEY).
int theWidth = displayWidth;
int theHeight = displayHeight;

// RANDOM VARIABLE SET THAT IS ALSO USED IF THE 'M' KEY PRESS FUNCTION THAT GENERATES 
// A RANDOM POSITION ON THE SCREEN AND TRANSLATES TEXT THROUGH
    Random r = new Random();

void setup() {
  // use full screen size 
  size(displayWidth, displayHeight);
  background(255);
  smooth();
  cursor(CROSS);

  x = mouseX;
  y = mouseY;

// CHANGE TO RUN FULL-SCREEN PROGRAM ON ANY DISPLAY SIZE. 
theWidth = displayWidth;
theHeight = displayHeight;

  font = createFont("American Typewriter",10);
  //font = createFont("ArnhemFineTT-Normal",10);
  textFont(font,fontSizeMin);
  textAlign(LEFT);
  fill(0);


  /*
  // load an image in background
   PImage img = loadImage(selectInput("select a background image"));
   image(img, 0, 0, width, height);
   */
}


void draw() {
  if (mousePressed) {
    float d = dist(x,y, mouseX,mouseY);
    textFont(font,fontSizeMin+d/2);
    char newLetter = letters.charAt(counter);
    stepSize = textWidth(newLetter);

    if (d > stepSize) {
       // TEXT WAS CENTERED AT A POINT
      float angle = atan2(mouseY-y, mouseX-x); 

      pushMatrix();
      // TEXT CENTERED IN MIDDLE OF THE DISPLAY
      translate (theWidth /2, theHeight/2);
      rotate(angle + random(angleDistortion));
      //COLOUR CHNAGE BASED ON MOUSE POSITION
      fill(mouseX, mouseY,000);
      text(newLetter, 0, 0);
      popMatrix();

      counter++;
      if (counter > letters.length()-1) counter = 0;

      x = x + cos(angle) * stepSize;
      y = y + sin(angle) * stepSize; 
    }
  }
}


void mousePressed() {
  x = mouseX;
  y = mouseY;
}

void keyReleased() {
  if (key == 's' || key == 'S') saveFrame(timestamp()+"_##.png");
  if (key == DELETE || key == BACKSPACE) background(255);

  // ------ pdf export ------
  // press 'r' to start pdf recordPDF and 'e' to stop it
  // ONLY by pressing 'e' the pdf is saved to disk!
  if (key =='r' || key =='R') {
    if (recordPDF == false) {
      beginRecord(PDF, timestamp()+".pdf");
      println("recording started");
      recordPDF = true;
      textAlign(LEFT);
      fill(0);
    }
  } 
  else if (key == 'e' || key =='E') {
    if (recordPDF) {
      println("recording stopped");
      endRecord();
      recordPDF = false;
      background(255); 
    }
  } 
}

void keyPressed() {
  // angleDistortion ctrls arrowkeys up/down 
  if (keyCode == UP) angleDistortion += 0.1;
  if (keyCode == DOWN) angleDistortion -= 0.1; 
}

// timestamp
String timestamp() {
  Calendar now = Calendar.getInstance();
  return String.format("%1$ty%1$tm%1$td_%1$tH%1$tM%1$tS", now);
}

















