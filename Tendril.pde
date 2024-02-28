class Tendril
{
  public final static int SEG_LENGTH = 4; //length of each segment in the tendril
  private int myNumSegments, myX, myY;
  private double myAngle;
  
  /**
   Class constructor
   len is how many segments in this tendril (each a fixed length, 4 is a good start)
   theta is tendril starting angle in radians 
   x, y  is the starting (x,y) coordinate
   */
  public Tendril(int len, double theta, int x, int y)
  {
    //your code here
    myNumSegments = len;
    myX = x;
    myY = y;
    myAngle = theta;
  }
  public void show()
  {
    //your code here
    if (myNumSegments < 10){
      stroke(255, 0, 0);
    }
    else if (myNumSegments < 10){
      stroke(0,255,0);
    }
    else {
      stroke(0,0,255);
    }
     int startX = myX;
     int startY = myY;
     for (int i = 0; i < myNumSegments; i++){
       myAngle += (Math.random()*2/5) - 0.2;
       int endX = startX + (int)(cos((float)myAngle) * SEG_LENGTH);
       int endY = startY + (int)(sin((float)myAngle) * SEG_LENGTH);
       line(startX, startY, endX, endY);
       startX = endX;
       startY = endY;
     }
    if (myNumSegments >= 3){
      Cluster newCluster = new Cluster(myNumSegments - 24, startX, startY);
    }
  }
}
