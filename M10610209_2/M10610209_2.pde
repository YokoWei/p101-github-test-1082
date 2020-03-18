float tailWidth = 40;
float bodyWidth = 160;
float headWidth = 40;
float wingHeight = 20;
float stripeWidth = 20;

float bodyHeight = 40;

float rocketXSpeed = 5;
float rocketYAngleSpeed = 2;
float rocketYAmplitude = 40;

float jupiterX = 600, jupiterY = 100;
float jupiterSize = 0;
float jupiterMaxSize = 200;

float f = min(12.3, 230.24);
float c = max(12.3, 230.24); 
float x;

PImage bg;
PImage jupiter;


float rocketX, rocketY;
int r,g,b;


void setup(){
  size(800,200);
  bg = loadImage("cosmos.png");
  jupiter = loadImage("jupiter.png");
  x = 0;
  rocketX = 300;
  rocketY = 100;
  
  
}

void draw(){
  rectMode(CENTER);
  background(bg);
  x = x+0.15;
  rocketX = 20*x;
  rocketY = 20 * sin(x) + 100;
  
  r = floor(random(256));
  g = floor(random(256));
  b = floor(random(256));
  
  imageMode(CENTER);
  image(jupiter,jupiterX,jupiterY,jupiterSize,jupiterSize);
  tint(r,g,b);
  if (jupiterSize < jupiterMaxSize){
  jupiterSize ++;
  }

  
  noStroke();
  //head
  fill(#AC3939);
  ellipse(rocketX-headWidth,rocketY,headWidth*2,bodyHeight);
   //light
   fill(#FFD62E);
  ellipse(rocketX-headWidth-bodyWidth-tailWidth,rocketY,headWidth,bodyHeight); 
  //body
  fill(255);
  rect(rocketX-headWidth-bodyWidth/2,rocketY,bodyWidth,bodyHeight);
  //belt
  fill(#AC3939);
  rect(rocketX-3*headWidth-stripeWidth-stripeWidth/2,rocketY,stripeWidth,bodyHeight);
  //wingr
  fill(#D0D0D0);
  triangle(rocketX-headWidth-30,rocketY+bodyHeight/2,rocketX-headWidth-100,
           rocketY+bodyHeight/2,rocketX-headWidth-100,rocketY+bodyHeight);
  //wingl
  fill(#D0D0D0);
  triangle(rocketX-headWidth-30,rocketY-bodyHeight/2,rocketX-headWidth-100,
           rocketY-bodyHeight/2,rocketX-headWidth-100,rocketY-bodyHeight);
  //tailWidth
  fill(#AC3939);
  quad(rocketX-headWidth-bodyWidth,rocketY-bodyHeight/2,rocketX-headWidth-bodyWidth,rocketY+bodyHeight/2,
       rocketX-headWidth-bodyWidth-tailWidth,rocketY+bodyHeight,rocketX-headWidth-bodyWidth-tailWidth,rocketY-bodyHeight);
  //window
  fill(#CFF4F9);
  stroke(#B6D1DA);
  circle(rocketX-headWidth-30,rocketY,25);
  
 
  
  
}
