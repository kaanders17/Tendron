public void setup()
{
  size(500, 500);  
  background(0);
  noLoop();
}

public void draw()
{
  background(0);
  //stroke(0);
  Cluster c = new Cluster(20, 400, 400);
  Cluster b = new Cluster(20, 100, 100);
  Cluster a = new Cluster(20, 400, 100);
  Cluster d = new Cluster(20, 100, 400);// initial number of segments in the tendril and starting (x,y) coordinate
}
public void mousePressed()
{
  redraw();
}
