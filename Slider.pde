// Class to make a slider control

class Slider
{
  int posX, posY;
  int barWidth, barHeight;
  int sliderX, sliderY;
  int sliderSize;
  int edgeBuffer = 5;
  
  // set all the slider element positions based on the overall position
  // and size of the slider
  public Slider(int posX, int posY, int barWidth, int barHeight)
  {
    this.posX = posX;
    this.posY = posY;
    this.barWidth = barWidth;
    this.barHeight = barHeight;
    sliderSize = barHeight + 10;
    sliderX = posX + barWidth / 2 - sliderSize / 2;
    sliderY = posY - 5;
  }
  
  public void draw()
  {
    fill(0);
    rect(posX, posY, barWidth, barHeight);
    fill(255);
    rect(sliderX, sliderY, sliderSize, sliderSize);
  }
  
  public void stop()
  {
    simulationSpeed = 0;
    sliderX = posX + barWidth / 2 - sliderSize / 2;
  }
  
  void mouseDragged()
  {
    if(mouseX > posX + edgeBuffer + sliderSize / 2 && mouseX < posX + barWidth - edgeBuffer - sliderSize / 2 && mouseY > posY - 5 && mouseY < posY + 10)
    {
      sliderX = mouseX - sliderSize / 2;
      // need to make the centre of the slider equal to a simulation speed of 1.0
      // when the slider is centred, to make sliderX 0 we must add half slider block, subtract half barWidth, subtract posX
      simulationSpeed = sliderX + sliderSize / 2 - barWidth / 2 - posX;
    }
  }
}