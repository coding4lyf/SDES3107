void setup (){
  size(400,400);
  background(100);
  smooth();
  noLoop();
  stroke(255);
  noFill();
  rectMode(CENTER);
}
void draw (){
squareNest (200,200,200,200,200);
}
  void squareNest (int size, int number, int x, int y , int colour)
  { stroke (colour);
  for (int counter = number; counter >0; counter -=10) {
    rect (x,y,size,size);

  }
}
  

