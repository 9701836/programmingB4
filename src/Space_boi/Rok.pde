class Rok {
  // member variables
  int x, y, health, dia;
  char displayMode;
  color c;

  // constructor
  Rok(int x1) {
    this.x=x1;
    y=0;
    health=50;
    dia=40;
    displayMode='1';
    c=#B2ACAD;
  }

  // member methods
  void display() {
    fill(c);
    noStroke();
    ellipse(x, y, dia, dia);
  }

  void move() {
    y+=3;
  }

  boolean atBottom() {
    if (y>=height+dia) {
      return true;
    } else { 
      return false;
    }
  }
}
