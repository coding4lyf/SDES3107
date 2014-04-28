//24.3. Load an image and use it as a drawing tool.


PImage lineImage;

void setup() {
size(500, 500);
lineImage = loadImage("sun.jpg");
}
void draw() {
image(lineImage, 
mouseX-lineImage.width/2, 
mouseY);
}
