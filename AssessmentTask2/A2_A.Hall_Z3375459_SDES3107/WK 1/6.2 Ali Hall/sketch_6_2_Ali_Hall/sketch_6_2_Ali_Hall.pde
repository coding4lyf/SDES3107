//6.2draw dense patter by embedding structures
size(100,100);
float upperleft = width/4;

background(234,111,142);
stroke(0,0,0);
fill(0,0,0);



// a = 10 20 30 40 50 60 70 80 90
for (int a = 10; a < 100; a += 10)
{
  
  
  
  
  
  for (int y =10; y < 100;y +=10)
  {
    
  ellipse(y,a,3,3);
  }
}
