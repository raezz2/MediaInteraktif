// variable posisi
int posX = 400;
int posY = 0;
int velY = 1;

void setup() {
  size(800, 600);
}

void draw() {
  background(255);
  fill(25, 90, 200);
  circle(posX, posY, 50);
  
  // naikkan posY agar lingkaran bergerak
  posY = posY + velY;
  
  // bila circle berada di tepi layar,
  // ubah velY dengan kebalikanya
  if(posY - 25 <= 0 || posY + 25 >= height) {
    velY = velY * -1; 
  }
}
