// Space Game Thing
//William C
// TODO: setup

Spaceboi oh;
Enemyboi ho;
Rok yo;
Timer tim;

ArrayList<Lazer> Lazers = new ArrayList<Lazer>();
ArrayList<Rok> Rocs = new ArrayList<Rok>();
Car[] stars = new Car[100];

int pass, score;
boolean play;


void setup() {
  size(500, 500);
  oh = new Spaceboi(#832A2A, mouseX, mouseY);
  ho = new Enemyboi(#3B5DC1);
  Lazers = new ArrayList();
  Rocs = new ArrayList();
  tim = new Timer(1000);
  for (int i = 0; i<stars.length; i++) {
    stars[i] = new Car(255, random(width));
  }
}

void keyPressed() {
  Lazers.add(new Lazer(int(oh.x-31.5), oh.y-20));
  Lazers.add(new Lazer(int(oh.x+32.5), oh.y-20));
}

void draw() {
  background(0);
  if (tim.isFinished()==true) {
    Rocs.add(new Rok(int(random(0, width))));
    tim.totalTime=tim.totalTime+1000;
    tim.start();
  }
  for (int i = 0; i < stars.length; i++) { 
    stars[i].display();
    stars[i].drive();
  }
  for (int i = 0; i < Lazers.size(); i++) {
    Lazer lazer = Lazers.get(i);
    lazer.display();
    lazer.fire();
    if (lazer.y<=-3) {
      Lazers.remove(lazer);
    }
  }
  for (int i = 0; i < Rocs.size(); i++) {
    Rok rock = Rocs.get(i);
    rock.display();
    rock.move();
  }
  oh.display(mouseX, mouseY);
  ho.display(50, 50);
  infopanel();
  tim.start();
  //yo.display();
  //yo.move();
}

//for (int i =0; i< rocks.size(); i++){
//  Rock rock = rocks.get(i);
//  rock.display();
//  rock.move();
//  if (s1.rockIntersection(rock)){
//    rocks.remove(rock);
//    s1.health-=rock.health/4;
//  }
//  if (rock.reachedBottom){
//    rocks.remove(rock);
//  }
//}

void infopanel() {
  fill(128, 128);
  rect(0, height-50, width, 50);
  fill(255, 128);
  text("Health: "+oh.health, 50, height-20);
  text("Ammo: "+oh.ammo, 250, height-20);
  text("Lives: "+oh.lives, 150, height-20);
}
