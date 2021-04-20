void setup(){
  size(400,400);
}

void draw(){
  background(128);
  
  line(100,0,100,height);
  for(int i=380;i>0; i-=20){
    line(96,i,104,i);
    textSize(8);
    textAlign(RIGHT);
    fill(255);
    text(i,78,height-i);
  } 
  fill(255,0,0);
  rect(96,mouseY,8,400);
  fill(255);
  textAlign(LEFT);
  text("Cel:" + convertToCel(400-mouseY),108, mouseY+10);
  
  //line(100,0,100,height);
  //for(int i=20; i<height; i+=20){
  //  line(96,i,104,i);
  //  textSize(8);
  //  textAlign(RIGHT);
  //  text(i,78,i+3);
  //}
  //rect(100,0,15,mouseY);
  //textAlign(LEFT);
  //text("Cel:" + convertToCel(mouseY),124, mouseY);
    
  //line(0,100,width,100);
  //for(int i=20; i<width; i+=20){
  // line(i,96,i,104);
  // textSize(8);
  // textAlign(CENTER);
  // text(i,i,94);
  //}
  //ellipse(mouseX,100,5,5);
  //text("Cel:" + convertToCel(mouseX),mouseX,115);
  
  println("Convert 212 to Celsius "+convertToCel(212));
  println("Convert 100 to Farenheit "+convertToFar(100));
}

float convertToCel(float val){
  return(5*(val-32)/9);
}

float convertToFar(float va){
  return(9*(va)/5+32);
}
