size (400,400); 
background(240,181,229);
noStroke();
smooth();
int radius = 100;
//the size of the circle 
fill(67,224,16);

for (int deg = 0; deg < 360; deg += 10) {
 //deg= degrees. from zero to three sixty which makes up a circle
 //the inverval is "deg += ..." is the amount of circles it allots the smaller the number the more the circles 
 
  float angle = radians(deg);
  float x = 250 + (cos(angle) * radius);
  //float x= 250 is the placement on the page 
  float y =250 + (sin(angle) * radius);
  //float y= 250 is the placement on the page 
  ellipse(x, y, 6, 6);
  //is the roundness of the circle 
}

