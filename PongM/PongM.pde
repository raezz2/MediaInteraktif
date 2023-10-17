import processing.sound.*;

Ball b;
Pads p;

PFont font;
SoundFile sndPick;
SoundFile sndExpl;

int score = 0;

void setup() {
  size(800, 800);
  b = new Ball();
  p = new Pads();
  
  font = loadFont("Corbel-48.vlw");
  sndPick = new SoundFile(this, "pick.wav");
  sndExpl = new SoundFile(this, "explode.wav");
}

void draw() {
  background(0);
  
  drawHUD();
  
  b.show();
  p.move(mouseX, mouseY);
  p.show();
  
  if(b.hit(p))
  {
    score++;
    sndPick.play();
  }
  
  if(!b.alive) {
    b.reset();
    score = 0;
    sndExpl.play();
  }
}

void drawHUD() {
  noStroke();
  fill(#F5EA74, 100);
  textFont(font, 120);
  textAlign(CENTER, CENTER);
  text(score, width / 2, height / 2);
}
