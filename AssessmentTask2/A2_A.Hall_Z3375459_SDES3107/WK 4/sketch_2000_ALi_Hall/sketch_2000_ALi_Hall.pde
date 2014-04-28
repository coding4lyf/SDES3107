float f = 0.0;
float r = 110;

void setup() {
size(400,400);
background(120,250,200);
stroke(255);
}
void draw (){
  frameRate(25);
  background(255,0,0);
  rect(f,50,20,20);
  f=f + 0.5;
  if (f > 110){
rect(r,50,20,20);
r=r - 0.5;
if (r < 0) {
  f = 0; r = 110; 
}

