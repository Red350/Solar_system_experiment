int centreX, centreY;
Planet sun, earth, mars, jupiter;
Slider speedChange;

// I really didn't want to use a global variable for this,
// but processing will not allow static variables in classes
// as the classes themselves have a non-static outer class
float simulationSpeed = 1.0;

void setup()
{
  size(800, 800);
  frameRate(60);
  
  // Create planets
  sun = new Planet(100, 0, 0, #FFFF00);
  earth = new Planet(20, 150, 0.01, #00FF00);
  mars = new Planet(25, 220, 0.005, #FF0000);
  jupiter = new Planet(70, 320, 0.00083, #c2b280);
  
  // Create slider
  speedChange = new Slider (10, height-200, 110, 6);
}

void draw()
{
  background(#003366);
  
  // update planet positions
  earth.update();
  mars.update();
  jupiter.update();
  
  // draw planets
  sun.draw();
  earth.draw();
  mars.draw();
  jupiter.draw();
  
  // draw slider
  speedChange.draw();
}

void mouseDragged()
{
  speedChange.mouseDragged();
}