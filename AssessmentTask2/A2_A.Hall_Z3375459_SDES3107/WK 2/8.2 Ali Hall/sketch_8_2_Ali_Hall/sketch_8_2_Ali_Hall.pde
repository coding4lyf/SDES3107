// 8.1 / 8.1 use the data from the curve y = x (to the power of 8) 
//to draw something unique. 

size(300,300);
background(230,50,60);
fill(250,98,207);
stroke(98,250,238);
strokeWeight(6);

for (int x = 0; x < 200; x ++) {
  float n = norm(x,0.0,100.0);
  float y = pow(n,4);
  y *=100;
  point(x,y);
}
