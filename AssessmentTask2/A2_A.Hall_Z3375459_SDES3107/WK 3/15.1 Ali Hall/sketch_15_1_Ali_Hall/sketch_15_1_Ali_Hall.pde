//15.1 use three variables assigned to a random values to create
//a composition tha tis different everytime the program is run.
size(300,300);
background(0,0,0);
int randomPos = int(random(300.0));
int randomPos2 = int(random(250.0));
int randomPos3 = int(random(80.0));

fill(25,250,25);
noStroke(); 
ellipse(randomPos,randomPos2,randomPos3,randomPos3);
