Spaceship bob = new Spaceship();
Star[] sue = new Star[350];
ArrayList <Bullet> sam = new ArrayList <Bullet>();
ArrayList <AsteroidA> x = new ArrayList <AsteroidA>();
ArrayList <AsteroidB> y = new ArrayList <AsteroidB>();
ArrayList <AsteroidC> z = new ArrayList <AsteroidC>();
public void setup() 
{
  size(600, 600);
  textAlign(TOP, LEFT);
  for (int i = 0; i < sue.length; i++) //stars array
    sue[i] = new Star();
  for (int nI = 0; nI < 5; nI++) { //asteroidsA array
    x.add(new AsteroidA());
  }
  for(int nI = 0; nI < 5; nI++){ //asteroidsB array
    y.add(new AsteroidB());
  }
  for(int nI = 0; nI < 5; nI++){ //asteroidsC array
    z.add(new AsteroidC());
  }
}
public void draw() 
{
  background(0);
  for (int i = 0; i < sue.length; i++) { //stars array
    sue[i].show();
    sue[i].randomize();
  }
  for (int nI = 0; nI < sam.size(); nI++) { //bullets array
    if (!sam.get(nI).isAlive()) {
      sam.remove(nI);
      --nI;
      continue;
    }  
    sam.get(nI).show();
    sam.get(nI).move();
  }
  bob.show();
  bob.move();
  fill(255);
  text("Press 'a' to rotate left.", 20, 30);
  text("Press 'd' to rotate right.", 20, 50);
  text("Press 'Spacebar' to use hyperspace.", 20, 70);
  text("Press 'w' to accelerate.", 20, 90);
  text("Press 's' to deccelerate.", 20, 110);
  text("Press 'f' to shoot bullets.", 20, 130);
  
  for (int nI = 0; nI < x.size(); nI++) { //asteroidsA array
    x.get(nI).show();
    x.get(nI).move();
    float d1 = dist((float)bob.getX(), (float)bob.getY(), (float)x.get(nI).getX(), (float)x.get(nI).getY());
    if(d1<20)
      x.remove(nI);
  }
  for(int nI = 0; nI < y.size(); nI++){ //asteroidsB array
    y.get(nI).show();
    y.get(nI).move();
    float d2 = dist((float)bob.getX(), (float)bob.getY(), (float)y.get(nI).getX(), (float)y.get(nI).getY());
    if(d2<20)
      y.remove(nI);
  }
  for(int nI = 0; nI < z.size(); nI++){ //asteroidsC array
    z.get(nI).show();
    z.get(nI).move();
    float d3 = dist((float)bob.getX(), (float)bob.getY(), (float)z.get(nI).getX(), (float)z.get(nI).getY());
    if(d3<25)
      z.remove(nI);
  }
  
  for (int nI = 0; nI < sam.size(); nI++) { //asteroidsA array
    sam.get(nI).show();
    sam.get(nI).move();
    for (int i = 0; i < x.size(); i++){
      float d1 = dist((float)sam.get(nI).getX(), (float)sam.get(nI).getY(), (float)x.get(i).getX(), (float)x.get(i).getY());
      if(d1<20){
      sam.remove(nI);
      x.remove(i);
      break;
      }
    }
  }
  for (int nI = 0; nI < sam.size(); nI++) { //asteroidsA array
    sam.get(nI).show();
    sam.get(nI).move();
    for (int i = 0; i < y.size(); i++){
      float d1 = dist((float)sam.get(nI).getX(), (float)sam.get(nI).getY(), (float)y.get(i).getX(), (float)y.get(i).getY());
      if(d1<20){
      sam.remove(nI);
      y.remove(i);
      break;
      }
    }
  }
  for (int nI = 0; nI < sam.size(); nI++) { //asteroidsA array
    for (int i = 0; i < z.size(); i++){
      float d1 = dist((float)sam.get(nI).getX(), (float)sam.get(nI).getY(), (float)z.get(i).getX(), (float)z.get(i).getY());
      if(d1<20){
      sam.remove(nI);
      z.remove(i);
      break;
      }
    }
  }
}

public void keyPressed() {
  if (key == 'a') { //rotate left
    bob.turn(-15);
  }
  if (key == 'd') { //rotate right
    bob.turn(15);
  }
  if (key == ' ') { //hyperspace
    bob.hyperspace();
  }
  if (key == 'w') { //accelerate
    bob.accelerate(.5);
  }
  if (key == 's') { //reverse
    bob.accelerate(-.5);
  }
  if (key == 'f') { //bullets
    sam.add(new Bullet(bob));
  }
}
