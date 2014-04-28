void setup(){
  size(400,400);
smooth();
noStroke();
}
void draw(){
float x = mouseX;
float y = mouseY;
float ix = width - mouseX;
float iy = mouseY - height;
background(126, 120,230);
fill(255,150);
ellipse(x,height/2,iy,iy);
}


