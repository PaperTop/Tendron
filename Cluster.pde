public class Cluster
{
    public final static int NUM_STEMS = 7; //number of tendrils per cluster
    
    public Cluster(int len, int x, int y)
    {
        // your code here
        ArrayList <Tendril> roots = new ArrayList<Tendril>();;
        for (int i = 0; i < 7; i++){
          roots.add(new Tendril(len, Math.random()*2*PI, x, y));
          roots.get(i).show();
        }
    }
}
