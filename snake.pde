int cols = 10; //<>//
int rows = 10;
int w = 60;


long frameCounter = 0;
int posX = 0;
int posY = 0;
int speedX = 0;
int speedY = 0;


void setup()
{
  size(800, 600);
}


void draw()
{
  if (frameCounter % 20 == 0)
  {
    drawBoard();

    posX += speedX;
    posY += speedY;
  }
  frameCounter++;
}

void drawBoard()
{
  int rectX = 0; 
  int rectY = 0;

  for (int row = 0; row < rows; row++) {
    for (int col = 0; col < cols; col++) {
      if (posX == col && posY == row)
      {
        fill(255);
      } else
      {
        fill(0);
      }
      rect(rectX, rectY, w, w);
      rectX = rectX + w;
    }
    rectX = 0;
    rectY = rectY + w;
  }
}


void keyPressed() {
  switch(keyCode)
  {
  case UP:
    speedX = 0;
    speedY = -1;
    break;

  case DOWN:
    speedX = 0;
    speedY = 1;
    break;

  case LEFT:
    speedX = -1;
    speedY = 0;
    break;

  case RIGHT:
    speedX = 1;
    speedY = 0;
    break;
  }
}