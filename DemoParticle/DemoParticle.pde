ParticleSystem flame;

void setup() 
{
  size(800, 800);
  
  flame = new ParticleSystem();
  
  blendMode(SCREEN);
}

void draw() 
{
  background(0);
   
  flame.show(mouseX, mouseY);
}
