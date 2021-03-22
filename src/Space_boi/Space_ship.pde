class Spaceboi {
  int x, y, health, ammo, lives, rad;
  char displayMode;
  color c1;

  // constructor

  Spaceboi(color c1,int x1, int y1) {
    x=x1;
    y=y1;
    health=3;
    ammo=100;
    rad=50;
    lives=1;
    displayMode='1';
    this.c1=c1;
  }

  //collision for roks
  

  // member variable

  void display(int x2, int y2) {
    this.x=x2;
    this.y=y2;
    if (displayMode=='1') {
      fill(c1);
      stroke(255);
      quad(x2, y2-45, x2-10, y2-5, x2, y2, x2+10, y2-5);
      quad(x2-9, y2-9, x2-29, y2-9, x2-29, y2-13, x2-5, y2-25);
      quad(x2+9, y2-9, x2+29, y2-9, x2+29, y2-13, x2+5, y2-25);
      rect(x2-34, y2-18, 5, 14, 5);
      rect(x2+29, y2-18, 5, 14, 5);
      fill(200);
      ellipse(x2, y2-25, 5, 10);
    }
  }

  // member methods
}
