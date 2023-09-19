void setup() {
  size(800, 600);
}

void draw() {
  // set warma BG
  background(255, 255, 255);
  
  if(mousePressed) {
    fill(255, 0, 0);   //jika mouse diklik warna jadi merah
  } else {
    fill(0, 255, 0);  // jika tidak, warna hijau
  }  
  // gambar lingkaran
  circle(mouseX, mouseY, 50);

}
