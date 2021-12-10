class Spaceship extends Floater{
  public Spaceship(){
    corners = 4;
    xCorners = new int[]{-15,-5, -15, 15};
    yCorners = new int[]{-10,0, 10,0};
    myColor = (255);
    myCenterX = (double)(Math.random()*600);
    myCenterY = (double)(Math.random()*600);
    myPointDirection = 0;
  }
  public void Hyperspace()
  {
    myXspeed = 0;
    myYspeed = 0;
    myCenterX = (double)(Math.random()*600);
    myCenterY = (double)(Math.random()*600);
    myPointDirection = (double)(Math.random()*360);
  }
  public double getX(){return myCenterX;}
  public double getY(){return myCenterY;}
  
}
