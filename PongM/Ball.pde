class Ball {
  Ball() {
    rad = 15;
    reset();
  }
  
  void reset() {
    pos = new PVector(width / 2, height / 2);
    vel = PVector.random2D();
    vel.mult(5);
    alive = true;
  }
  
  boolean hit(Pads _p) {
    if((pos.x - rad <= _p.margin + _p.thick / 2 && abs(pos.y - _p.pos.y) <= _p.length / 2) ||
       (pos.x + rad >= width - _p.margin - _p.thick / 2 && abs(pos.y - _p.pos.y) <= _p.length / 2) ) {
      vel.x *= -1;
      return true;
    }
    
    if((pos.y - rad <= _p.margin + _p.thick / 2 && abs(pos.x - _p.pos.x) <= _p.length / 2) ||
       (pos.y + rad >= height - _p.margin - _p.thick / 2 && abs(pos.x - _p.pos.x) <= _p.length / 2) ) {
      vel.y *= -1;
      return true;
    }
    
    return false;
  }
  
  void show() {
    pos.add(vel);
    if(pos.x - rad <= 0 || pos.x + rad >= width || pos.y - rad <= 0 || pos.y + rad >= height)
      alive = false;
    
    noStroke();
    fill(#32F7F6);
    circle(pos.x, pos.y, 2 * rad);
  }
  
  PVector pos;
  PVector vel;
  boolean alive;
  float rad;
}
