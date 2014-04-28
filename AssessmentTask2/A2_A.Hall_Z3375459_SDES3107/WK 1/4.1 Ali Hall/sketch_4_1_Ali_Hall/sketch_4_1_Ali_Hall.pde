// 4.1 use one variable to set the position and size
// for three ellipse. 

size(1000, 1000);

float upperleft = width/4;

background(6464);
stroke(167,233,240);
fill(255,70,70);


fill(255,1,1);
float x = 50;
ellipse(x-50, x-50, x/6, x/6);
ellipse(x, x, x/3, x/3);
ellipse(x+50, x+50, x/2, x/2);
ellipse(x+100,x+100, x/1, x/1);
