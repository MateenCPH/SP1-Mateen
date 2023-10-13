public class Bubble
{
  float xpos;
  float ypos;
  float yspeed;
  float xspeed;
  int diameter;

  public Bubble(int diameter)
  {
    this.diameter = diameter;
    xpos = random(width);
    ypos = random(height);
    yspeed = random(0.4, 1.4);
    xspeed = random(0.4, 1.4);
  }


  public void display()
  {
    stroke(0);
    fill(255, 0, 0, 80);
    ellipse(xpos, ypos, diameter, diameter);
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
    if (dist(xpos, ypos, mouseX, mouseY) < diameter / 1.8)
    {
      background(255, 0, 0, 20);
    }
  }
}
