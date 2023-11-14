class Particle
{
  Particle(float _x, float _y) 
  {
    pos = new PVector(_x, _y);
    vel = PVector.random2D();
    alpha = (int)random(50, 200);
  }
  
  void live() {
    noStroke();
    fill(#0064E3, alpha);
    circle(pos.x, pos.y, 5);
    
    pos.add(vel);
    alpha -= 3;
  }
  
  void reset(float _x, float _y) 
  {
    pos = new PVector(_x, _y);
    vel = PVector.random2D();
    alpha = (int)random(50, 200);
  }
  
  boolean isDead() 
  {
    return alpha <= 0;
  }
  
  PVector pos;
  PVector vel;
  int alpha;
}
