size(150,500);
//11.2 create two sting variables and assign a word to each. 
//Write each to the console.

background(100,20,100);
fill(200,20,100);
stroke(250,20,20);
strokeWeight(6);

for (int x = 0; x < 500; x ++) {
  float n = norm(x,0.0,100.0);
  float y = pow(n,4);
  y *=100;
  point(x,y);
}


String s1 = "dog";
String s2 = "cat";
String s4 = "cow";
String s5 = "horse";
String s6 = "frog";
println(s1);
println(s2);
println(s1 + s2 + s4 + s5 + s6);


