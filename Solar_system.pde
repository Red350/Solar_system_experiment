int centreX, centreY;
Planet sun, earth, mars, jupiter, x, y, z;
Slider speedChange;
Button stopButton;
Asteroid testAsteroid;
int simFrame = 0;

// I really didn't want to use a global variable for this,
// but processing will not allow static variables in classes
// as the classes themselves have a non-static outer class
// This should probably be an int, haven't tested it enough yet though
float simulationSpeed = 1.0;

void setup()
{
  size(800, 800);
  frameRate(60);
  
  // Create planets
  sun = new Planet(100, 0, 0, #FFFF00);
  earth = new Planet(20, 150, 0.01, #00FF00);
  mars = new Planet(25, 220, 0.005, #FF0000);
  jupiter = new Planet(70, 320, 0.00083, #c2b280); //<>//
  x = new Planet(10, 120, 0.02, 255);
  y = new Planet(15, 245, 0.003, 255);
  z = new Planet(17, 180, 0.001, 255);
  
  // Create slider
  speedChange = new Slider(10, height-200, 110, 6);
  
  // Create button
  stopButton = new Button(10, height - 100, 30, 30, 0);
  
  // Create asteroid
  testAsteroid = new Asteroid();
}

void draw()
{
  background(#003366);
  stroke(0);
  
  // draw current state number of simulation
  text(simFrame, 10, 10);
  simFrame = simFrame + (int)simulationSpeed;
  println("Sim speed is " + simulationSpeed);
  
  // update planet positions
  earth.update();
  mars.update();
  jupiter.update();
  x.update();
  y.update();
  z.update();
  
  // draw planets
  sun.draw();
  earth.draw();
  mars.draw();
  jupiter.draw();
  x.draw();
  y.draw();
  z.draw();
  
  // draw slider
  speedChange.draw();
  
  // draw button
  stopButton.draw();
  
  // asteroid stuff
  testAsteroid.update();
  testAsteroid.draw();
}

void mousePressed()
{
  stopButton.mousePressed();
}

void mouseDragged()
{
  speedChange.mouseDragged();
}