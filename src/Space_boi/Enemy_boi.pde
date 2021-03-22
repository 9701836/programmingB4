class Enemyboi {
  int x, y, health;
  char displayMode;
  color c1;

  // constructor

  Enemyboi(color c1) {
    x=0;
    y=0;
    health=3;
    displayMode='1';
    this.c1=c1;
  }

  // member variable

  void display(int x1, int y1) {
    if (displayMode=='1') {
      fill(c1);
      stroke(255);
      quad(x1, y1-45, x1-10, y1-5, x1, y1, x1+10, y1-5);
      quad(x1-9, y1-9, x1-29, y1-9, x1-29, y1-13, x1-5, y1-25);
      quad(x1+9, y1-9, x1+29, y1-9, x1+29, y1-13, x1+5, y1-25);
      rect(x1-34, y1-18, 5, 14, 5);
      rect(x1+29, y1-18, 5, 14, 5);
      fill(200);
      ellipse(x1, y1-25, 5, 10);
    }
  }

  // member methods
}
