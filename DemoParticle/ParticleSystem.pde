class ParticleSystem 
{
  ParticleSystem()
  {
    particles = new Particle[1000];
    for(int i = 0; i < particles.length; i++)
    {
      particles[i] = new Particle(0, 0);    
    }
}

  void show(float _x, float _y) {
    for(int i = 0; i < particles.length; i++)
    {
      particles[i].live();
      
      if(particles[i].isDead())
        particles[i].reset(_x, _y);
    }
  }

  Particle particles[];
}
