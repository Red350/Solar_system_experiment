class Button
{
  int posX, posY, buttonWidth, buttonHeight;
  color c;
  
  public Button(int posX, int posY, int buttonWidth, int buttonHeight, color c)
  {
    this.posX = posX;
    this.posY = posY;
    this.buttonWidth = buttonWidth;
    this.buttonHeight = buttonHeight;
    this.c = c;
  }
  
  public void draw()
  {
    rect(posX, posY, buttonWidth, buttonHeight);
  }
  
  public void mousePressed()
  {
    //if (mouseX > posX && mouseX < posX + buttonWidth && mouseY > posY && mouseY < posY - buttonHeight)
    if (mouseX > posX && mouseX < posX + buttonWidth && mouseY > posY && mouseY < posY + buttonHeight)
    {
      speedChange.stop();
    }
  }
}