class AsteroidA extends Floater{
  protected int rotateSpeed;
  public AsteroidA(){
    corners = 6;
    xCorners = new int[corners];
    yCorners = new int[corners];
    xCorners[0] = -20;
    yCorners[0] = 0;
    xCorners[1] = -10;
    yCorners[1] = 20;
    xCorners[2] = 10;
    yCorners[2] = 15;
    xCorners[3] = 20;
    yCorners[3] = 0;
    xCorners[4] = 10;
    yCorners[4] = -15;
    xCorners[5] = -10;
    yCorners[5] = -20;
    myColor = color(160,153,150);
    myCenterX = Math.random()*600;
    myCenterY = Math.random()*600;
    myXspeed = (Math.random()*.4)+.3;
    myYspeed = (Math.random()*.4)+.3;
    myPointDirection = 0;
    rotateSpeed = (int)(Math.random()*3)+1;
  }
  public void move(){
    super.move();
    myPointDirection += rotateSpeed;
  }
  public double getX(){
    return myCenterX;
  }
  public double getY(){
    return myCenterY;
  }
}
class AsteroidB extends Floater{
  protected int rotateSpeed;
  public AsteroidB(){
    corners = 5;
    xCorners = new int[corners];
    yCorners = new int[corners];
    xCorners[0] = -30;
    yCorners[0] = -10;
    xCorners[1] = -20;
    yCorners[1] = 10;
    xCorners[2] = 10;
    yCorners[2] = 20;
    xCorners[3] = 25;
    yCorners[3] = 5;
    xCorners[4] = 10;
    yCorners[4] = -15;
    myColor = color(165,133,117);
    myCenterX = Math.random()*600;
    myCenterY = Math.random()*600;
    myXspeed = (Math.random()*1.3)+.7;
    myYspeed = (Math.random()*1.3)+.7;
    myPointDirection = 0;
    rotateSpeed = (int)(Math.random()*3)+1;
  }
  public void move(){
    super.move();
    myPointDirection += rotateSpeed;
  }
  public double getX(){
    return myCenterX;
  }
  public double getY(){
    return myCenterY;
  }
}
class AsteroidC extends Floater{
  protected int rotateSpeed;
  public AsteroidC(){
    corners = 6;
    xCorners = new int[corners];
    yCorners = new int[corners];
    xCorners[0] = -30;
    yCorners[0] = 0;
    xCorners[1] = -15;
    yCorners[1] = 21;
    xCorners[2] = 7;
    yCorners[2] = 26;
    xCorners[3] = 30;
    yCorners[3] = 5;
    xCorners[4] = 15;
    yCorners[4] = -22;
    xCorners[5] = -15;
    yCorners[5] = -22;
    myColor = color(165,133,117);
    myCenterX = Math.random()*600;
    myCenterY = Math.random()*600;
    myXspeed = (Math.random())+.5;
    myYspeed = (Math.random())+.5;
    myPointDirection = 0;
    rotateSpeed = (int)(Math.random()*3)+1;
  }
  public void move(){
    super.move();
    myPointDirection += rotateSpeed;
  }
  public double getX(){
    return myCenterX;
  }
  public double getY(){
    return myCenterY;
  }
}
