
size(400, 400);
background(115, 202, 30);
stroke(100, 100, 5);
fill(255, 207, 106);
strokeWeight(4);

int a = height/20;
float MiddleX = height/2;
float MiddleY = width/2;
float b = width-a;

line(a, a+50, MiddleX, MiddleY);
line(a, a+200, MiddleX, MiddleY);
line(a, a+250, MiddleX, MiddleY);
line(a, a+300, MiddleX, MiddleY);
line(a, a+350, MiddleX, MiddleY);

line(a+250, a, MiddleX, MiddleY);
line(a+100, a, MiddleX, MiddleY);
line(a+250, a, MiddleX, MiddleY);
line(a+200, a, MiddleX, MiddleY);
line(a+250, a, MiddleX, MiddleY);

line(a, a+400, MiddleX, MiddleY);
line(a, a+450, MiddleX, MiddleY);
line(a, a+500, MiddleX, MiddleY);
line(a, a+550, MiddleX, MiddleY);
line(a, a+600, MiddleX, MiddleY);


ellipse(height/2, width/2, height/2, width/2);

