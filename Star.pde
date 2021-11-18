class Star //note that this class does NOT extend Floater
{
  protected double myX, myY, randomizeX, randomizeY;
  Star(){
    myX = 0;
    myY = 0;
    randomizeX = Math.random()*600;
    randomizeY = Math.random()*600;
  }
  public void show(){
    fill(255);
    ellipse((float)myX,(float)myY,2,2);
  }
  public void randomize(){
    myX = randomizeX;
    myY = randomizeY;
  }
}
