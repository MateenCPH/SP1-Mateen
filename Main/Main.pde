Bubble[] bubbles = new Bubble[25];
Square[] squares = new Square[25];
StartCircle start;
StopCircle stop;


public void setup()
{
  size(500, 500);
  for (int i = 0; i < bubbles.length; i++)
  {
    bubbles[i] = new Bubble(int(random(15, 40)));
  }

  for (int i = 0; i < squares.length; i++)
  {
    squares[i] = new Square(int(random(15, 40)));
  }

  start = new StartCircle(480, 20, 35, color(170, 0, 0));
  stop = new StopCircle(20, 480, 35, color(26, 170, 24));
  
  println("Start at the green circle, and move your way up to the red circle, WITHOUT touching the shapes!");
}


public void draw()
{
  background(255);
  for (int i = 0; i < bubbles.length; i++)
  {
    bubbles[i].display();
    bubbles[i].ascend();
    bubbles[i].bounce();
    bubbles[i].reset();
    
  }

  for (int i = 0; i < squares.length; i++)
  {
    squares[i].display();
    squares[i].ascend();
    squares[i].bounce();
    squares[i].reset();
    squares[i].gameOver(start);
  }

  start.display();
  stop.display();
}
