class Car {
  color c;
  float xpos, ypos, xspeed;
  boolean a;

  Car(int x, float y) {
    this.xpos = x;
    this.ypos = y;
    c=x;
    //xpos=width/2;
    //ypos=height/2;
    xspeed=y;
  }

  void display() {
    fill(c);
    rect(xpos, ypos, 1, 1);
  }

  void drive() {
      ypos=ypos+xspeed;
      if (ypos>width) {
        xpos=random(width);
        ypos=0;
        c=int(random(150,255));
        xspeed=random(1, 30);
      }
    }
  }
