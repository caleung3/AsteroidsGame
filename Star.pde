class Star
{
 private int myX, myY, myColor;
 public Star(){
    myX = (int)(Math.random()*600);
    myY = (int)(Math.random()*600);
    myColor = color((int)(Math.random()*256),
                    (int)(Math.random()*256),
                    (int)(Math.random()*256));
  }
  void show() {
    fill(myColor);
    ellipse(myX, myY, 5, 5);
  }
}
