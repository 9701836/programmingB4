class Lazer {
  // member variables
  int x, y, speed;
  color c;

  // constructor
  Lazer(int x, int y) {
    this.x=x;
    this.y=y;
    speed=6;
    c=#FA0828;
  }

  // member methods

  void fire() {
    y=y-30;
  }

  boolean reachedTop() {
    if (y<-3) {
      return true;
    } else {
      return false;
    }
  }

  void display() {
    fill(c);
    noStroke();
    // rectMode(CENTER);
    rect(x-1, y-3, 3, 6);
  }
}
