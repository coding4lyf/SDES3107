// use multiplication to create a series of ellipse with increasing space

int screenWidth = 500;
int pos = 50;
int ellipseSize = 100;
int positionFactor = 1;

float floatie = 3.5;

size(screenWidth, screenWidth*2);

//mouseX mouseY

background (255,149,254);

ellipse(pos,pos,ellipseSize,ellipseSize);
pos +=20;
ellipseSize -=10;
ellipse(pos,pos,ellipseSize,ellipseSize);
pos +=20;
ellipseSize -= 10;
ellipse(pos, pos, ellipseSize, ellipseSize);
pos += 20;
ellipseSize -= 10;
ellipse(pos, pos, ellipseSize, ellipseSize);
pos += 20;
ellipseSize -= 10;
ellipse(pos, pos, ellipseSize, ellipseSize);
pos += 20;
ellipseSize -= 10;
ellipse(pos, pos, ellipseSize, ellipseSize);
pos += 20;
ellipseSize -= 10;

stroke(243,252,3);


