ArrayList <Bullet> shots = new ArrayList<Bullet>();
Spaceship[] Luke = new Spaceship[3];
Star [] Vader; 
ArrayList <Asteroids> roids = new ArrayList<Asteroids>();
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
  
for(int k = 0; k<20; k++)
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
  ///
  if(key == 'w')
  {
    for(int w = 0; w<Luke.length; w++)
    {
    Luke[w].accelerate(1);
    }
  }
  
  ////
  if(key == 'a')
  {
    for(int x = 0; x<Luke.length; x++){
    Luke[x].accelerate(0);
    Luke[x].turn(-5);
    }
  }
  
  if (key == 'd')
  {
    for(int n = 0; n<Luke.length; n++)
    {
    Luke[n].accelerate(0);
    Luke[n].turn(5);
    }
  }
  
  if(key == ' ')
  {
  for(int a = 0; a<Luke.length; a++)
   {
    shots.add(new Bullet(Luke[a]));
   }
  }
}


public void draw()
{
  
  float roidX;
  float roidY;
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
    
    roidX = (float)roids.get(j).getX();
    roidY = (float)roids.get(j).getY();
    float shipToAstroid = dist((float)Luke[b].getX(), (float)Luke[b].getY(), roidX, roidY); 
    //if (d<20)
    //roids.remove(j);
  
   
  
   for(int v = 0; v<shots.size(); v++)
   {
     shots.get(v).move();
     shots.get(v).show();
     float shotToAstroid = dist((float)shots.get(v).getX(), (float)shots.get(v).getY(), roidX, roidY);
     if(shotToAstroid<40 || shipToAstroid<20)
     {
     roids.remove(j);
     //shots.remove(v);
     }
     
     if(shots.get(v).getX() == 0 || shots.get(v).getX() == 600 || shots.get(v).getY() == 0 || shots.get(v).getY() == 600)
     {
       shots.remove(v);
     }
     
     
     
   }//shots
  }//roids
   
  } //luke
  
  }

