float revBumi = 0;
float revBulan = 0;

void setup() {
  size(900, 900);
}

void draw() {
  background(0);
  
  // matahari
  fill(#FF9327);
  circle(width / 2, height / 2, 200);
  
  // bumi
  translate(width / 2, height / 2);
  rotate(revBulan);
  fill(#00ADF0);
  circle(350, 0, 50);
  
   // bulan
  translate(350, 0);
  rotate(revBulan);
  fill(#B1C2C9);
  circle(55, 0, 15);
  
  revBulan += 0.0020;
  revBumi += 0.001;
}
