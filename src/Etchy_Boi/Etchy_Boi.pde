int x, y;

void setup(){
  size(400,400);
  frameRate(10);
  x = 10;
  y= 10;
}

void draw(){
  fill(0);
  will();
  noLoop();
}
 
void will(){
  moveRightDD(30);
  moveRightUD(30);
  moveRightDD(30);
  moveRightUD(30);
  moveRight(30);
  moveLeft(10);
  moveDown(30);
  moveLeft(15);
  moveRight(30);
  moveUp(30);
  moveDown(30);
  moveRight(20);
  moveUp(30);
  moveDown(30);
  moveRight(20);
}
void moveRight(int rep){
  for(int i=0; i<rep; i=i+1){
    point(x+i,y);
  }
  x=x+rep;
}

void moveDown(int rep){
  for (int i=0; i<rep; i=i+1){
    point(x,y+i);
  }
  y=y+rep;
}

void moveLeft(int rep){
  for(int i=0; i<rep; i=i+1){
    point(x-i,y);
  }
  x=x-rep;
}

void moveUp(int rep){
  for (int i=0; i<rep; i=i+1){
    point(x,y-i);
  }
  y=y-rep;
}

void moveLeftDD(int rep){
  for(int i=0; i<rep; i=i+1){
    point(x-i,y+i);
  }
  x=x-rep;
  y=y+rep;
}

void moveRightDD(int rep){
  for(int i=0; i<rep; i=i+1){
    point(x+i,y+i);
  }
  x=x+rep;
  y=y+rep;
}

void moveRightUD(int rep){
  for(int i=0; i<rep; i=i+1){
    point(x+i,y-i);
  }
  x=x+rep;
  y=y-rep;
}

void moveLeftUD(int rep){
  for(int i=0; i<rep; i=i+1){
    point(x-i,y-i);
  }
  x=x-rep;
  y=y-rep;
}
