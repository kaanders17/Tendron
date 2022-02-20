public class Cluster
{
    public final static int NUM_STEMS = 7;
    private double angle;//number of tendrils per cluster

    public Cluster(int len, int x, int y)
    {
          angle = Math.random()*2*Math.PI;
          Tendril bob0 = new Tendril(len, angle, x, y);
          Tendril bob1 = new Tendril(len, angle + (2*Math.PI/7), x, y);
          Tendril bob2 = new Tendril(len, angle + (4*Math.PI/7), x, y);
          Tendril bob3 = new Tendril(len, angle + (6*Math.PI/7), x, y);
          Tendril bob4 = new Tendril(len, angle + (8*Math.PI/7), x, y);
          Tendril bob5 = new Tendril(len, angle + (10*Math.PI/7), x, y);
          Tendril bob6 = new Tendril(len, angle + (12*Math.PI/7), x, y);
          bob0.show();
          bob1.show();
          bob2.show();
          bob3.show();
          bob4.show();
          bob5.show();
          bob6.show();
    }
}
