/* ////////////////////////////////// //<>//
 2020 Calculator for Programming I
 Mr Kapptie | Nov 2020
 Colors: NumButtons #FFFFFF #D8D6D6
 OpButtons #38FAEE #33C9C0
 //////////////////////////////////*/


// Globals
Button[] numButtons = new Button[10];
Button[] opButtons = new Button[14];
String dVal;
String op;
boolean left;
float r;
float l;
float result;
int currentNum;

void setup() {
  size(310, 370); // Compact
  //size(290, 450);  // Extended
  dVal = "0";
  op = "";
  left = true;
  r = 0.0;
  l = 0.0;
  result = 0.0;
  currentNum = 0;
  numButtons[0] = new Button(155, 335, 50, 50, "0", #FFFFFF, #D8D6D6);
  numButtons[1] = new Button(95, 275, 50, 50, "1", #FFFFFF, #D8D6D6);
  numButtons[2] = new Button(155, 275, 50, 50, "2", #FFFFFF, #D8D6D6);
  numButtons[3] = new Button(215, 275, 50, 50, "3", #FFFFFF, #D8D6D6);
  numButtons[4] = new Button(95, 215, 50, 50, "4", #FFFFFF, #D8D6D6);
  numButtons[5] = new Button(155, 215, 50, 50, "5", #FFFFFF, #D8D6D6);
  numButtons[6] = new Button(215, 215, 50, 50, "6", #FFFFFF, #D8D6D6);
  numButtons[7] = new Button(95, 155, 50, 50, "7", #FFFFFF, #D8D6D6);
  numButtons[8] = new Button(155, 155, 50, 50, "8", #FFFFFF, #D8D6D6);
  numButtons[9] = new Button(215, 155, 50, 50, "9", #FFFFFF, #D8D6D6);
  opButtons[0] = new Button(65, 95, 110, 50, "Clear", #3EF567, #34C655);
  opButtons[1] = new Button(275, 335, 50, 50, "=", #38FAEE, #33C9C0);
  opButtons[2] = new Button(215, 335, 50, 50, ".", #38FAEE, #33C9C0);
  opButtons[3] = new Button(275, 215, 50, 50, "+", #38FAEE, #33C9C0);
  opButtons[4] = new Button(275, 275, 50, 50, "-", #38FAEE, #33C9C0);
  opButtons[5] = new Button(275, 95, 50, 50, "x", #38FAEE, #33C9C0);
  opButtons[6] = new Button(275, 155, 50, 50, "÷", #38FAEE, #33C9C0);
  opButtons[13] = new Button(215, 95, 50, 50, "±", #38FAEE, #33C9C0);
  opButtons[8] = new Button(155, 95, 50, 50, "%", #38FAEE, #33C9C0);
  opButtons[9] = new Button(35, 275, 50, 50, "x²", #38FAEE, #33C9C0);
  opButtons[10] = new Button(35, 335, 50, 50, "√", #38FAEE, #33C9C0);
  opButtons[11] = new Button(35, 155, 50, 50, "sin", #38FAEE, #33C9C0);
  opButtons[12] = new Button(35, 215, 50, 50, "cos", #38FAEE, #33C9C0);
  opButtons[7] = new Button(95, 335, 50, 50, "Rand", #38FAEE, #33C9C0);
}

void draw() {
  background(0);

  // Show Calculator Display
  updateDisplay();

  // Display and hover buttons
  for (int i=0; i<numButtons.length; i++) {
    numButtons[i].hover(mouseX, mouseY);
    numButtons[i].display();
  }
  for (int i=0; i<opButtons.length; i++) {
    opButtons[i].hover(mouseX, mouseY);
    opButtons[i].display();
  }
}

void updateDisplay() {
  rectMode(CORNER);
  fill(255);
  rect(10, 10, width-20, 50);  

  fill(0);
  textAlign(RIGHT);

  // Render Scaling Text
  if (dVal.length()<14) {
    textSize(32);
  } else if (dVal.length()<16) {
    textSize(28);
  } else if (dVal.length()<18) {
    textSize(26);
  } else if (dVal.length()<19) {
    textSize(24);
  } else if (dVal.length()<21) {
    textSize(22);
  }
  text(dVal, width-15, 50);
}

void mousePressed() {
  println ("L:" + l + " R:" + r + " Op:" + op);
  println("Result:" + result + " Left:" + left);

  for (int i=0; i<numButtons.length; i++) {
    if (numButtons[i].hover && dVal.length()<20) {
      if (left) {
        if (dVal.equals("0")) {
          dVal = numButtons[i].val;
          l = float(dVal);
        } else {
          dVal += (numButtons[i].val);
          l = float (dVal);
        }
      } else {
        if (dVal.equals("+") || dVal.equals("-") || dVal.equals("x") || dVal.equals("÷")) {
          dVal = (numButtons[i].val);
          r = float (dVal);
        } else {
          dVal += (numButtons[i].val);
          r = float(dVal);
        }
      }
    }
  }

  for (int i=0; i<opButtons.length; i++) {
    if (opButtons[i].hover && opButtons[i].val.equals("Clear")) {
      dVal = "0";
      result = 0.0;
      left = true;
      r = 0.0;
      l = 0.0;
      op = "";
    } else if (opButtons[i].hover && opButtons[i].val.equals("+")) {
      if (!left) {
        performCalc();
      } else {
        op = "+";
        left = false;
        dVal = "+";
      }
    } else if (opButtons[i].hover && opButtons[i].val.equals("-")) {
      if (!left) {
        performCalc();
      } else {
        op = "-";
        left = false;
        dVal = "-";
      }
    } else if (opButtons[i].hover && opButtons[i].val.equals("x")) {
      if (!left) {
        performCalc();
      } else {
        op = "x";
        left = false;
        dVal = "x";
      }
    } else if (opButtons[i].hover && opButtons[i].val.equals("÷")) {
      if (!left) {
        performCalc();
      } else {
        op = "÷";
        left = false;
        dVal = "÷";
      }
    } else if (opButtons[i].hover && opButtons[i].val.equals("=")) {
      performCalc();
    } else if (opButtons[i].hover && opButtons[i].val.equals("±")) {
      if (!left) {
        performCalc();
      } else {
        op = "±";
        left = false;
        dVal = "±";
      }
    } else if (opButtons[i].hover && opButtons[i].val.equals("x²")) {
      if (!left) {
        performCalc();
      } else {
        op = "x²";
        left = false;
        dVal = "x²";
      }
    } else if (opButtons[i].hover && opButtons[i].val.equals("√")) {
      if (!left) {
        performCalc();
      } else {
        op = "√";
        left = false;
        dVal = "√";
      }
    } else if (opButtons[i].hover && opButtons[i].val.equals("sin")) {
      if (!left) {
        performCalc();
      } else {
        op = "sin";
        left = false;
        dVal = "sin";
      }
    } else if (opButtons[i].hover && opButtons[i].val.equals("cos")) {
      if (!left) {
        performCalc();
      } else {
        op = "cos";
        left = false;
        dVal = "cos";
      }
    } else if (opButtons[i].hover && opButtons[i].val.equals("Rand")) {
      if (!left) {
        performCalc();
      } else {
        op = "Rand";
        left = false;
        dVal = "Rand";
      }
    } else if (opButtons[i].hover && opButtons[i].val.equals("%")) {
      if (!left) {
        performCalc();
      } else {
        op = "%";
        left = false;
        dVal = "%";
      }
    } else if (opButtons[i].hover && opButtons[i].val.equals(".")) {
      if (!left) {
        performCalc();
      } else {
        op = ".";
        left = false;
        dVal = ".";
      }
    }
  }
}
void keyPressed() {
}



void performCalc() {
  if (op.equals("+")) {
    result = l + r;
  } else if (op.equals("-")) {
    result = l - r;
  } else if (op.equals("x")) {
    result = l * r;
  } else if (op.equals("÷")) {
    result = l / r;
  } else if (op.equals("±")) {
    result = l - 2 * l;
  } else if (op.equals("÷")) {
    result = l / r;
  } else if (op.equals("x²")) {
    result = sq(l);
  } else if (op.equals("√")) {
    result = sqrt(l);
  } else if (op.equals("sin")) {
    result = sin(radians(l));
  } else if (op.equals("cos")) {
    result = cos(radians(l));
  } else if (op.equals("Rand")) {
    result = random(0, 1);
  } else if (op.equals("%")) {
    result = l / 100;
  } else if (op.equals(".")) {
    result = l + r / pow(10, dVal.length() - dVal.length());
  } else {
    result = l;
  }
  l = result;
  dVal = str(result);
  left = true;
  op = "nothing";
}
