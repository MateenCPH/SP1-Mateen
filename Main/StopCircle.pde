public class StopCircle
{
  int x;
  int y;
  int diameter;
  color c;

  public StopCircle (int x, int y, int diameter, color c)
  {
    this.x = x;
    this.y = y;
    this.diameter = diameter;
    this.c = c;
  }


  public void display()
  {
    strokeWeight(1);
    stroke(0);
    fill(c);
    ellipse(x, y, diameter, diameter);
  }
}
