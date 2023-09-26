PVector pos; // posisi
PVector vel; // kecepatan
PVector des; // titik tujuan
float heading;

void setup() {
  size(800, 600);
  
  pos = new PVector(width / 2, height / 2);
  vel = new PVector(0, 0);
  des = new PVector(width / 2, height / 2);
  heading = 0;
  frameRate(120);
}

void draw() {
  background(#FFFFFF);
  
  // kalkulasi jarak
  PVector delta = PVector.sub(des, pos);
  vel = delta.normalize();
  vel.mult(2);
  pos.add(vel);
  
  // heading
  heading = atan2(vel.y, vel.x);
  
  translate(pos.x, pos.y);
  rotate(heading);
  stroke(0);
  fill(#A27A14);
  ellipse(0, 0, 22, 8);
  line(11, 0, 16, -5);
  line(11, 0, 16, 5);
}

void mouseClicked() {
  des.x = mouseX;
  des.y = mouseY;
}
