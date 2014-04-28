//5.2 create a composition with a series of lines and ellipses. Use an 
//if structure to select which lines of code run and whicht to skip.

if ((3<5) && (3>5))
{
}



size(400, 400);
strokeWeight(5);
background(226, 234, 111);

//x = 0 5 10 15 20

for (int x = 0; x<width; x=x+10) {
  if ((x>50) && (x<110)) {
   strokeWeight(3);
    stroke(50, 30, 0);
    //  } else {
    //    stroke(0,0,0);
   line(x,0,x,height);
}

if ((x>160) && (x<220)){
  strokeWeight(3);
  stroke(50,30,0);
  line(x,0,x,height);
}

else { strokeWeight(6);
line(x,0,x,height);}
}
