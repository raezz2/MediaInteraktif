import processing.video.*;

Capture capt;

void setup() {
  size (640, 480);
  capt = new Capture(this);
  
  capt.start();
}

void draw() {
  background(255);
  if(capt.available()) {
  capt.read();
}
//Mode Miror
imageMode(CENTER);
translate(width / 2,height /2);
scale(-1, 1);
image(capt, 0, 0);
}
