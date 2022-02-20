class Tendril
{
  public final static int SEG_LENGTH = 6; //length of each segment in the tendril
  private int myNumSegments, myColor; 
  private double myX, myY, startX, startY, endX, endY;
  private double myAngle;
  
  /**
   Class constructor
   len is how many segments in this tendril (each a fixed length, 4 is a good start)
   theta is tendril starting angle in radians 
   x, y  is the starting (x,y) coordinate
   */
  public Tendril(int len, double theta, int x, int y)
  {
    myX = x;
    myY = y;
    myAngle = theta;
    myNumSegments = len;
    startX = myX;
    startY = myY;
    
    //myColor = 20;
    //your code here
  }
  public void show()
  {
    if(myNumSegments > 11){
      stroke(80, 235, 242);
      
    }
    else if(myNumSegments > 2){
      stroke(242, 226, 128);
      
    }
    else{
      stroke(242, 104, 194);
    }
    //stroke((200/myNumSegments) * 2, (900/myNumSegments) * 2, (1000/myNumSegments) * 2);
    //stroke((myNumSegments * 70)/2, (myNumSegments * 80)/9 + 100, myNumSegments * 20/2 + 100);
    for(int i = 0; i < myNumSegments; i++){
      
      myAngle += ((Math.random()) * 0.4) - 0.2;
      endX = startX + (cos((float)myAngle) * SEG_LENGTH);
      endY = startY + (sin((float)myAngle) * SEG_LENGTH);
      line((float)startX, (float)startY, (float)endX, (float)endY);
      startX = endX;
      startY = endY;
    }
    if(myNumSegments >= SEG_LENGTH){
      
      //myColor += 50;
      Cluster bob = new Cluster(myNumSegments - 9, (int)endX, (int)endY);
    }
    //your code here
  }
}
