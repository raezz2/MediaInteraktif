PImage img;
PFont font;

void setup() {
  size(800, 600);
  img = loadImage("Astronaut.jpg");
  font = loadFont("Constantia-BoldItalic-48.vlw");
}

void draw () {
  background(255);
  imageMode(CENTER);
  image( img, width / 2, height / 2);

  fill(240, 128, 128);
  textFont(font);
  textAlign(RIGHT, TOP);
  textSize(25);
  text("Low Gravity", width / 1.94 , height - 410);
  
  fill(240, 128, 128);
  textFont(font);
  textAlign(CENTER, BOTTOM);
  textSize(25);
  text("ASTRONAUT", width / 2 , height - 100);
}
