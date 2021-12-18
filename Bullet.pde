class Bullet extends Floater{
  private int ttl = 100;
  public Bullet(Spaceship bob){
    myCenterX = bob.getX();
    myCenterY = bob.getY();
    myXspeed = bob.getXspeed();
    myYspeed = bob.getYspeed();
    myPointDirection = bob.getPointDirection();
    accelerate(6);
  }
  public void show(){
    fill(240,63,63);
    noStroke();
    ellipse((float)myCenterX, (float)myCenterY, 7.0, 7.0);
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
  public void move() {
    super.move();
    --ttl;
  }
  public boolean isAlive() {
    return ttl > 0;
  }  
}
