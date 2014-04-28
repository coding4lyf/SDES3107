//4.4 

size(1000, 500);

background (105, 229, 72);
fill(225);

//float middleX = width/2
//float middleY = height/2
//
// ellipse (middleX, middleY, 30,30);
//stroke(216,172,232);

//float x = 10;
//ellipse (x-50, x-50, x/6. x/6);
//ellipse (x,x,x/3,x/3);
//ellipse(x+50,x+50,x/2,x/2);


strokeWeight(4); 
stroke(255, 0, 0);


//repeat 5 times
for (int x = 30; x < width; x +=30)
{
  for (int y = 30; y <height; y += 30)
  {
    ellipse (x, y, 3, 3);
  }
}

