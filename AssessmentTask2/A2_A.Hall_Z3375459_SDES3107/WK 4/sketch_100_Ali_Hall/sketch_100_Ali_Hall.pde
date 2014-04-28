void setup (){
  size(500,500);
  background(100);
  smooth();
  noLoop();
  stroke(255);
  noFill();
  rectMode(CENTER);
}
void draw (){
  squareNest(450,270,270,250);
 
}
void squareNest(int size, int number, int x, int y) {
  for (int counter = number; counter > 0; counter -= 10) {
    rect(x,y,size, size);
    size -= 10;
  }
}
