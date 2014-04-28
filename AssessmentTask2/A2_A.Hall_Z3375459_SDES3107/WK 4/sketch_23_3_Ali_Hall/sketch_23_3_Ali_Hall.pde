void setup() { 
  size(300, 300); 
  strokeWeight(7); 
  smooth(); 
 
}
void draw() {
background(204, 165,127);
noStroke();
noCursor();
fill(116, 193, 206, 180); // Blue
rect(mouseX, mouseY, 20, 20);

if (mousePressed == true) {
cursor(HAND); }
else {cursor(MOVE);
}
}

