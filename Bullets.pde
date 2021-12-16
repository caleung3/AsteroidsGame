class Bullet extends Floater{
  public Bullet(Spaceship theShip){
    myColor = (255);
    myCenterX = theShip.getX();
    myCenterY = theShip.getY();
    myXspeed = theShip.getXS();
    myYspeed = theShip.getYS();
    myPointDirection = theShip.getPointDirection();
  }
  public void show(){
    fill(myColor);
    ellipse((float)myCenterX, (float)myCenterY,10,10);
    //super.show();
  }
  
  public void move()
  {
    accelerate(.2);
    super.move();
  }
  
  
  public double getX(){return myCenterX;}
  public double getY(){return myCenterY;}
}
