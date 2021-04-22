float ypos, xpos, pointCount, strokeW;
void setup (){
  background(255);
  size(500,500);
  xpos=random(width);
  ypos= random(height);
}
void draw(){
  strokeW=random(1,5);
  pointCount=random(2,15);
  strokeWeight(strokeW);
  lines();
  if (frameCount>=500){
    frameCount=0;
    stroke(random(255),random(255),random(255));
    setup();
    lines();
  }
}
void lines(){
  if (random(80)>70){
  moveR(xpos,ypos,pointCount);    
  } else if (random(80)>60 && random(80)<=70){
  moveL(xpos,ypos,pointCount);    
  } else if (random(80)>50 && random(80)<=60){
  moveU(xpos,ypos,pointCount);    
  } else if (random(80)>40 && random(80)<=50){
  moveD(xpos,ypos,pointCount);    
  } else if (random(80)>30 && random(80)<=40){
  moveUR(xpos,ypos,pointCount);    
  } else if (random(80)>20 && random(80)<=30){
  moveDR(xpos,ypos,pointCount);    
  } else if (random(80)>10 && random(80)<=20){
  moveUL(xpos,ypos,pointCount);    
  } else if (random(80)<=10){
  moveDR(xpos,ypos,pointCount);    
  }
  if (xpos> width || xpos<0 || ypos <0 || ypos >height){
    stroke(random(255),random(255),random(255));
    ypos=random(height);
    xpos=random(width);
  }
}
void moveR(float startX,float startY,float moveCount){
  for (float i = 0; i<moveCount; i++){
    point(startX+i, startY);
    xpos = startX+i;
    ypos=startY;
  }
}
void moveL(float startX,float startY,float moveCount){
  for ( float i=0; i<moveCount; i++){
    point(startX-i, startY);
    xpos = startX-i;
    ypos=startY;
  }
}
void moveU(float startX,float startY,float moveCount){
  for ( float i=0; i<moveCount; i++){
    point(startX, startY-i);
    xpos = startX;
    ypos=startY-i;
  }
}
void moveD(float startX,float startY,float moveCount){
  for ( float i=0; i<moveCount; i++){
    point(startX, startY+i);
    xpos = startX;
    ypos=startY+i;
  }
}
void moveUR(float startX,float startY,float moveCount){
  for ( float i=0; i<moveCount; i++){
    point(startX+i, startY-i);
    xpos = startX+i;
    ypos=startY-i;
  }
}
void moveUL(float startX,float startY,float moveCount){
  for ( float i=0; i<moveCount; i++){
    point(startX-i, startY-i);
    xpos = startX-i;
    ypos=startY-i;
  }
}
void moveDR(float startX,float startY,float moveCount){
  for ( float i=0; i<moveCount; i++){
    point(startX+i, startY+i);
    xpos = startX+i;
    ypos=startY+i;
  }
}
void moveDL(float startX,float startY,float moveCount){
  for ( float i=0; i<moveCount; i++){
    point(startX-i, startY+i);
    xpos = startX-i;
    ypos=startY+i;
  }
}
