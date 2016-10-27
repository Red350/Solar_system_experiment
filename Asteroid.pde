class Asteroid
{
  PVector location, velocity;
  PVector prevLocations[];
  int trailLength;
  
  public Asteroid()
  {
    //location = new PVector(random(0,width), random(0,height));
    //velocity = new PVector(random(1,5), random(1,5));
    location = new PVector(0,0);
    velocity = new PVector(1,1);
    
    prevLocations = new PVector[5];
    for(int i = 0; i < 5; i++)
    {
      prevLocations[i] = new PVector(-10, -10);
    }
  }
  
  // Update the position of the asteroid
  // Currently using an array to store the asteroid's tail
  // Should probably be using something like a queue
  public void update()
  {
    for(int i = 0; i < 4; i++)
    {
      prevLocations[i] = prevLocations[i+1].copy();
    }   //<>//
    prevLocations[4] = location.copy();
    if (simulationSpeed > 0)
    {
      for (int i = 0; i < simulationSpeed; i++)
      {
        location.add(velocity);
      }
    }
    else
    {
      for(int i = 0; i > simulationSpeed; i--)
      {
        location.sub(velocity);
      }
    }
  }
  
  public void draw()
  {
    stroke(255);
    for(int i = 0; i < 5; i++)
    {
      point(prevLocations[i].x, prevLocations[i].y);
    }
  }
}