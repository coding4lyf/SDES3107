//17.2 use scale with a for structure to scale a shape multiple times
size (200,200); 
background (255); 
pushMatrix (); 
//makes it possible to make easy alterations 
//not to have a janga istuation where it makes the structure not work 
translate (33,0); 

// translate (33,0); 

//shifts that far away "33 pixtleS" 

rect (0,0,66,30); 
pushMatrix ();
rotate (PI/10); 
//pie 

// rotate (PI/10);
// translate (33,0); 




rect(0,0,66,30); 
pushMatrix ();
scale (0.5); 

// scale (0.5); 
// rotate (PI/10);
// translate (33,0);

rect(0,0,66,30);

// able to draw the next same coordinate into another one 
popMatrix (); 
//popMatrix makes it possible to draw the same rectangle without 
//making it scaled down into another rectangle 

fill(150,150);
rect(0,0,66,30);
//repeat the same sketch, that isnt scaled down in (0.5) 


