// 6.1 draw a regular pattern with five lines code 
//using a for structure.
size(1000, 1000);
float upperleft = width/4;

background(6464);
stroke(111,203,234);
fill(228,111,234);


for (int b = 500; b < width; b+= 100)
{
  for (int d = 500; d < width; d +=100)
  {
    line(b,d,50,50);
    ellipse(b,d,10,10);
  }
}
