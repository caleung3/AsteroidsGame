Spaceship[] Luke = new Spaceship[3];
Star [] Vader; 
ArrayList <Asteroids> roids = new ArrayList();
public void setup(){
  size(600,600);
  background(0);
  Vader = new Star[150];
  for(int i = 0; i<Vader.length; i++){
   Vader[i] = new Star();
  }
  
  for(int m = 0; m<Luke.length; m++){
    Luke[m] = new Spaceship();
  }
  
for(int k = 0; k<15; k++)
roids.add(new Asteroids());

}


public void keyPressed()
{
  if(key == 'x')
  {
    for(int x = 0; x<Luke.length; x++)
    {
    Luke[x].Hyperspace();
    }
   
  }
  if(key == 'w')
  {
    for(int w = 0; w<Luke.length; w++)
    {
    Luke[w].accelerate(1);
    }
  }
  
  if(key == 'a')
  {
    for(int x = 0; x<Luke.length; x++){
    Luke[x].accelerate(0);
    Luke[x].turn(-5);
    }
  }
  if (key == 'd')
  {
    for(int n = 0; n<Luke.length; n++){
    Luke[n].accelerate(0);
    Luke[n].turn(5);
    }
  }

}


public void draw()
{
  
  background(0);
  
  for(int i = 0; i<Vader.length; i++)
  Vader[i].show();
  
  for(int b = 0; b<Luke.length; b++)
  {
  Luke[b].show();
  Luke[b].move();
  
  
  for(int j = 0; j<roids.size(); j++)
  {
    roids.get(j).move();
    roids.get(j).show();
    
    //for(int z = 0; z<Luke.length; z++)
    //{
    float d = dist((float)Luke[b].getX(), (float)Luke[b].getY(), (float)roids.get(j).getX(), (float)roids.get(j).getY()); 
    if (d<20)
    roids.remove(j);
    //}
  }
  }
   
}
