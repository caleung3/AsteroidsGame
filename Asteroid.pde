class Asteroids extends Floater { 
  protected double rotSpeed;
  public Asteroids() 
  {
    myColor = (105);
    corners  = 6;
    xCorners = new int[corners];
    yCorners = new int[corners];
    xCorners[0] = (int)(Math.random()*12)-20;
    yCorners[0] = (int)(Math.random()*12)-15;
    xCorners[1] = (int)(Math.random()*12)+15;
    yCorners[1] = (int)(Math.random()*12)-15;
    xCorners[2] = (int)(Math.random()*12)+17;
    yCorners[2] = 0;
    xCorners[3] = (int)(Math.random()*12)+10;
    yCorners[3] = (int)(Math.random()*12)+9;
    xCorners[4] = (int)(Math.random()*12)-20;
    yCorners[4] = (int)(Math.random()*12)+15;
    xCorners[5] = (int)(Math.random()*12)-10;
    yCorners[5] = 0;
    rotSpeed = (double)(Math.random()*2);
    myCenterX = (double)(Math.random()*600);
    myCenterY = (double)(Math.random()*600);
    myXspeed = (Math.random()*2)-1;
    myYspeed = (Math.random()*2)-1;
  }
  public void move()
  {
    turn(rotSpeed);
    super.move();
  }
  public double getX(){return myCenterX;}
  public double getY(){return myCenterY;}
}
