class Powerup {
  // member variables
  int x, y,dia;
  char displayMode;
  color c;

  // constructor
  Powerup() {
    x=0;
    y=0;
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
}
