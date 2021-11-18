//your variable declarations here
Spaceship bob = new Spaceship();
Star[] sue = new Star[350];
public void setup() 
{
  size(600,600);
  for(int i = 0; i < sue.length; i++)
    sue[i] = new Star();
}
public void draw() 
{
  background(0);
  bob.show();
  bob.move();
  for(int i = 0; i < sue.length; i++){
    sue[i].show();
    sue[i].randomize();
  }
}
public void keyPressed(){
  if(key == 'a'){ //rotate left
    bob.turn(-15);
  }
  if(key == 'd'){ //rotate right
    bob.turn(15);
  }
  if(key == 'f'){ //hyperspace
    bob.hyperspace();
  }
  if(key == 'w'){ //accelerate
    bob.accelerate(.5);
  }
  if(key == 's'){ //reverse
    bob.accelerate(-.5);
  }
}
