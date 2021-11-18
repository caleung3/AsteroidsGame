Spaceship Luke = new Spaceship();
Star [] Vader;
public void setup(){
  size(600,600);
  background(0);
  Vader = new Star[150];
  for(int i = 0; i<Vader.length; i++){
   Vader[i] = new Star();
  }
}


public void keyPressed()
{
  if(key == 'x')
  {
    Luke.Hyperspace();
    
   
  }
  if(key == 'w')
  {
    Luke.accelerate(1);
  }
  
  if(key == 'a')
  {
    Luke.accelerate(0);
    Luke.turn(-5);
  }
  if (key == 'd')
  {
    Luke.accelerate(0);
    Luke.turn(5);
  }

}


public void draw()
{
  
  background(0);
  for(int i = 0; i<Vader.length; i++)
  Vader[i].show();
  Luke.show();
  Luke.move();
   
}

