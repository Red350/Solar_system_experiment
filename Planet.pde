class Planet
{
  int size;
  int distance;
  float planetSpeed;
  int posX, posY;
  color c = 255;
  float theta = PI/2;
  
  public Planet(int size, int distance, float planetSpeed, color c)
  {
    this.size = size;
    this.distance = distance;
    this.planetSpeed = planetSpeed;
    this.c = c;
    
    // run update once to set starting location of planet
    update();
  }
  
  public void update()
  {
    theta = theta + planetSpeed * simulationSpeed;
    posX = width/2 + (int)(cos(theta) * distance);
    posY = height/2 + (int)(sin(theta) * distance);
  }
  
  public void draw()
  {
    fill(c);
    ellipse(posX, posY, size, size);
  }
}