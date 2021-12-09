ArrayList <Bubble> bubbleList = new ArrayList <Bubble>();
void setup() {
  size(400, 400);
  for (int nI = 0; nI <10; nI++) {
    bubbleList.add(new Bubble((int)(Math.random()*400), (int)(Math.random()*400)));
  }
}

void draw() {
  background(255);
  for (int i=bubbleList.size()-1; i>=0; i--) {
    Bubble b = bubbleList.get(i);
    b.rise();
    b.show();
    if (b.checkCollision() == true) {
      bubbleList.remove(i);
    }
  }
  fill(8, 117, 19, 256);
  textSize(20);
  text("Total Bubbles: " +  bubbleList.size(),120,100);
}
