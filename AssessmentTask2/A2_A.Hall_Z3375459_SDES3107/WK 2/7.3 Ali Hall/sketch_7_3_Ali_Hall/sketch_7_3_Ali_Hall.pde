// draw a complex curved shape of your own design 
//using bexierVertex()

size(500,500);
background(72,2,227);
fill(210,201,229);
stroke(247,189,100);
strokeWeight(5);

smooth();

beginShape();
vertex(100,500);
bezierVertex(200,320,450,500,367,345);
bezierVertex(2250,490,200,441,211,302);
endShape(CLOSE);
