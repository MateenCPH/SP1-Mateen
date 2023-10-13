public class Square
{
  float xpos;
  float ypos;
  float yspeed;
  float xspeed;
  int sides;

  public Square(int sides)
  {
    this.sides = sides;
    xpos = random(width);
    ypos = random(height);
    yspeed = random(0.4, 1.4);
    xspeed = random(0.4, 1.4);
  }


  public void display()
  {
    stroke(0);
    fill(255, 0, 0, 80);
    rect(xpos, ypos, sides, sides);
  }

  public void ascend()
  {
    ypos = ypos - yspeed;
    xpos = xpos + xspeed;
  }

  public void bounce() //En smule hjælp fra en tidliger opgave, for at komme i gang
  {
    if (xpos > width || xpos < 0)
    {
      xspeed = xspeed * -1;
    } else if (ypos > height || ypos < 0)
    {
      yspeed = yspeed * -1;
    }
  }

  public void reset() //Hjælp fra bogen 
  {
    if (dist(xpos, ypos, mouseX, mouseY) < sides)
    {
      background(255, 0, 0, 80);
    }
  }

  public void gameOver(StartCircle start) //Hjælp fra ChatGPT til denne del, men det virker ikke da man skal importere nogle java.util's :((
  {
    if (mouseX > xpos && mouseX < xpos + sides && mouseY> ypos && mouseY < ypos + sides)
    {
      mouseX = int(start.x);
      mouseY = int(start.y);
    }
  }
}
