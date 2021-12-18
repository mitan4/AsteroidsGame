class Spaceship extends Floater  
{   
  public Spaceship(){
    corners = 4;
    xCorners = new int[corners];
    yCorners = new int[corners];
    xCorners[0] = -14;
    yCorners[0] = 10;
    xCorners[1] = -6;
    yCorners[1] = 0;
    xCorners[2] = -14;
    yCorners[2] = -10;
    xCorners[3] = 12;
    yCorners[3] = 0;
    myColor = color(255);
    myCenterX = 300;
    myCenterY = 300;
    myXspeed = 0;
    myYspeed = 0;
    myPointDirection = 0;
  }
  public void hyperspace(){
    myCenterX = (Math.random()*600);
    myXspeed = 0;
    myCenterY = (Math.random()*600);
    myYspeed = 0;
    myPointDirection = (Math.random()*360);
  }
  public double getX(){
    return myCenterX;
  }
  public double getY(){
    return myCenterY;
  }
  public double getXspeed(){
    return myXspeed;
  }
  public double getYspeed(){
    return myYspeed;
  }
  public double getPointDirection(){
    return myPointDirection;
  }
}
