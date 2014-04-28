// 4.2 using multplication to create a series of lines with increasing space between each.

int screenWidth = 500;
int pos = 50; 
int ellipseSeze = 100;
int positionFactor = 1;

float floatie = 3.5;

size (screenWidth, screenWidth*2);

//mouseX mouseY

background (255, 186, 100);

stroke (208, 167, 229);
strokeWeight (20);
int drawPosition = 10;
int distanceBetweenLines = 50;

println (drawPosition); 

float position = 10;
line(position, 0, position, height);
position = position * 2.5;
println(position);
line(position,0, position,height);
position = position *2.5;
println(position);
line(position,0,position, height);
position = position * 2.5;
println (position);
line(position, 0, position, height);
position = position * 2.5;
println (position);
line(position, 0, position, height);
