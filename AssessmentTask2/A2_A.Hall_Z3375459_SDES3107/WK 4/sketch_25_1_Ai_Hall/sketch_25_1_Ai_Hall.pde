//1. 25.1 Use the number keys on the keyboard to modify the movement of a line.
void setup() { 
size(400, 400); 
smooth();
}

void draw() {
background(150);

if (keyPressed == true) {

line(0, 00, 400, 400);
 
strokeWeight(4);
  } else {

rect(400, 400, 400, 4000);
} }
