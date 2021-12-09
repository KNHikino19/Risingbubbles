class Bubble {
  int mySize;
  color myColor;
  float myY, mySpeed, myX;
  boolean c;
  Bubble(int x, int y) {
    myX = x;
    myY = y;
    mySize = (int)(Math.random()*80)+20;
    mySpeed = mySize/100.0;
    myColor = color((int)(Math.random()*256), (int)(Math.random()*256), (int)(Math.random()*256),(int)(Math.random()*256));
  }
  void rise() {
    myX += (int)(Math.random()*3)-1;
    myY -= mySpeed;
    if (myY < -100) {
      myY = 500;
    }
  }
  void show() {
    fill(myColor);
    ellipse(myX, myY, mySize, mySize);
  }
  boolean checkCollision() {
    boolean c = false;
    for (Bubble b : bubbleList)
    {
      if (this != b)
      {
        if (dist(myX, myY, b.myX, b.myY)<(b.mySize/2+mySize/2))
        {
          c = true;
        }
      }
    }
    return c;
  }
}
