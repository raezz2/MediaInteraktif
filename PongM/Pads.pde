class Pads {
  Pads() {
    thick = 12;
    margin = thick / 2;
    length = 100;
    
    pos = new PVector(width / 2, height / 2);
  }
  
  void move(float _x, float _y) {
    pos.x = _x;
    pos.y = _y;
  }
  
  void show() {
    noStroke();
    rectMode(CENTER);
    
    // top
    fill(#F7697E);
    rect(pos.x, margin, length, thick);
    
    // bottom
    fill(#F7E732);
    rect(pos.x, height - margin, length, thick);
    
    // left
    fill(#32F761);
    rect(margin, pos.y, thick, length);
    
    // right
    fill(#F732CD);
    rect(width - margin, pos.y, thick, length);
  }
  
  PVector pos;
  float margin;
  float thick;
  float length;
}
