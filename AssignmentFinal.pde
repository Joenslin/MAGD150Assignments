//JOSEPH ENSLIN FINAL ASSIGNMENT MAGD 150
//PROFESSOR: NICK HWANG

//ARRAY
Particle[] particles = new Particle[0];
//VARIABLES
float radius = 40;
float circle_X = 104;
float circle_Y = 60;
int pressed = 0;
int pressedState = 0;
int maxParticles =100;
PImage img;
PImage pic;
PImage img2;
PImage shot;
//CLASS
Timer myTimer;
Coin myCoin;
BlackMario myBlackMario;
ColorMario myColorMario;
Goomba myGoomba;

void setup(){
  shot = loadImage("mario2.jpg");//surprise if you put left mouse in corner
  img = loadImage("coin.jpg");//background for coin
  pic = loadImage("mario.jpg");//background for mario
  img2 = loadImage("goomba.jpg");//background for goomba (sometimes appears sometimes does not, i do not know how to fix)
  size(350,350);
  noStroke();
  myTimer = new Timer(10000);
  myCoin = new Coin();
  myGoomba = new Goomba();
  myBlackMario = new BlackMario();
  myColorMario = new ColorMario();
}

void draw() {
  background(255);
  line(0,height/2,width,height);
  myColorMario.display();
  myBlackMario.display();
  if (pressedState==1){ // clicking changes state
  background(0);
    image(img2,0,0,width,height);
    myGoomba.display();
  } else if (pressedState==2){ // clicking changes state
    background(255);
    image(img,0,0,width,height);
    myCoin.display();
  } else { //clicking changes state yet again - back to original 
    background(255);
    image(pic,0,0,width,height);
    myBlackMario.display();
  }
      if (myTimer.isFinished()){
      println("THE END!");//timer says "THE END!" after 10 seconds
    }
    fill(#eec900); //coin color
  particles = (Particle[]) append(particles, new Particle(300, 0));
  if (particles.length>maxParticles) {//how many coins
    particles = (Particle[]) subset(particles, 1);
  }
  for (int i=0; i<particles.length; i++) {
      particles[i].x += particles[i].xVel;//speed of coins #1
      particles[i].y += particles[i].yVel;//speed of coins #2
  ellipse(particles[i].x, particles[i].y, particles[i].partsize, particles[i].partsize);//varying size of coins
  }
   if ( dist(mouseX, mouseY, circle_X, circle_Y) < radius) {
  image(shot,0,0,width,height); //hit detection, left corner by mario hat
  } else {
    fill(255);
    ellipse(1,1,1,1);
  }

}
class Particle { //particle class
//VARIABLES 
  float x;        
  float y;        
  float xVel;     
  float yVel;      
  float partsize;   
  Particle(float xpos, float ypos) {
    x = xpos = random (0,600);
    y = ypos;
    xVel = random (-1, 2);  
    yVel = random (0, 3);   
    partsize = random (2, 7); //random size, width, height, and all to make a partcile/coin fall
    
  }

}


void keyPressed(){
  if (keyPressed) {//flashing mario if held down, works on all states -- HOLD DOWN!
    myColorMario.display();
  }
}

void mousePressed(){ //how to change states, adds up the clicks until overrides at 3 and goes back to the original
  if (mousePressed) {
    pressed = pressed +1;
    pressedState = (pressed%3);
 
   
  }
}
//END!

--
//TAB A

class BlackMario{
//GLOBAL VARIABLES
float  x = 0;
float  y = 0;
//CONSTRCUTOR
BlackMario(){  
}
//FUNCTION
void display(){
    fill(0);
  rect(50, 180, 20, 90); // left side of arm 
  rect(50, 310, 20, 20); // left toe 
  rect(70, 70, 20, 50); // back of head  
  rect(70, 160, 20, 110); // left arm  
  rect(70, 290, 20, 40); // left foot 
  rect(90, 30, 20, 90); // left ear/side of head  
  rect(90, 140, 20, 190); // left body section  
  rect(110, 10, 20, 320); // left side  
  rect(130, 10, 20, 280); // left side 
  rect(150, 10, 20, 260); // midsection 
  rect(170, 10, 20, 260); // midsection 
  rect(190, 10, 20, 280); // left side 
  rect(210, 30, 20, 110); // right face section 
  rect(210, 160, 20, 170); // right body section 
  rect(230, 30, 20, 20); // right brim of hat 
  rect(230, 70, 20, 70); // right face column 
  rect(230, 160, 20, 170); // right body section 
  rect(250, 30, 20, 20); // end brim of hat from 
  rect(250, 70, 20, 50); // right face 
  rect(250, 160, 20, 110); // right body section 
  rect(250, 290, 20, 40); // right foot 
  rect(270, 85, 20, 20); // nose 
  rect(270, 180, 20, 90); // right arm 
  rect(270, 310, 20, 20); // right toe 
  fill(255); // white eye color
  rect(190, 50, 20, 40); // eye 
  
  
}
}

--
//TAB B

class ColorMario{
//GLOBAL VARIABLES
float  x = 0;
float  y = 0;
//CONSTRUCTOR
ColorMario(){
}
//FUNCATION
void display(){
   fill(random(255), random(255), random(255), random(255));
 rect(50, 180, 20, 90); // left side of arm 
  rect(50, 310, 20, 20); // left toe 
  rect(70, 70, 20, 50); // back of head  
  rect(70, 160, 20, 110); // left arm 
  rect(70, 290, 20, 40); // left foot 
  rect(90, 30, 20, 90); // left ear/side of head  
  rect(90, 140, 20, 190); // left body section  
  rect(110, 10, 20, 320); // left side  
  rect(130, 10, 20, 280); // left side 
  rect(150, 10, 20, 260); // midsection 
 rect(170, 10, 20, 260); // midsection 
  rect(190, 10, 20, 280); // left side 
  rect(210, 30, 20, 110); // right face section 
 rect(210, 160, 20, 170); // right body section 
  rect(230, 30, 20, 20); // right brim of hat 
 rect(230, 70, 20, 70); // right face column 
  rect(230, 160, 20, 170); // right body section 
  rect(250, 30, 20, 20); // end brim of hat from 
  rect(250, 70, 20, 50); // right face 
  rect(250, 160, 20, 110); // right body section 
  rect(250, 290, 20, 40); // right foot 
  rect(270, 85, 20, 20); // nose 
  rect(270, 180, 20, 90); // right arm 
  rect(270, 310, 20, 20); // right toe 
  fill(255); // white eye color
  rect(190, 50, 20, 40); // eye
  

}
}

--
//TAB C

class Goomba{
   //VARIABLES
   float  x = 0;
   float  y = 0;
Goomba(){
}
 
void display(){
  fill(234,120,43); //orange color of the goomba
  noStroke();
 
  //top of the goomba head
  //the math is x - 25, y + 25
 
  rect(255,30,25,25);
  rect(280,30,25,25);
  rect(305,30,25,25);
  rect(330,30,25,25);
 
  //second row of "pixels"
 
  rect(230,55,25,25);
  rect(255,55,25,25);
  rect(280,55,25,25);
  rect(305,55,25,25);
  rect(330,55,25,25);
  rect(355,55,25,25);
 
  //3rd row
 
  rect(205,80,25,25);
  rect(230,80,25,25);
  rect(255,80,25,25);
  rect(280,80,25,25);
  rect(305,80,25,25);
  rect(330,80,25,25);
  rect(355,80,25,25);
  rect(380,80,25,25);
 
  //4th
 
  rect(180,105,25,25);
  rect(205,105,25,25);
  rect(230,105,25,25);
  rect(255,105,25,25);
  rect(280,105,25,25);
  rect(305,105,25,25);
  rect(330,105,25,25);
  rect(355,105,25,25);
  rect(380,105,25,25);
  rect(405,105,25,25);
 
  //5th now comes the white and black
 
  rect(155,130,25,25);
 
  fill(0,0,0); //black
  rect(180,130,25,25);
  rect(205,130,25,25);
 
  fill(234,120,43); //orange
  rect(230,130,25,25);
  rect(255,130,25,25);
  rect(280,130,25,25);
  rect(305,130,25,25);
  rect(330,130,25,25);
  rect(355,130,25,25);
 
  fill(0,0,0); //black
  rect(380,130,25,25);
  rect(405,130,25,25);
 
  fill(234,120,43);
  rect(430,130,25,25);
 
  //6th row
 
  rect(130,155,25,25);
  rect(155,155,25,25);
  rect(180,155,25,25);
 
  fill(255,255,255); //white
  rect(205,155,25,25);
 
  fill(0,0,0); //black
  rect(230,155,25,25);
 
  fill(234,120,42);  //orange
  rect(255,155,25,25);
  rect(280,155,25,25);
  rect(305,155,25,25);
  rect(330,155,25,25);
 
  fill(0,0,0); //black
  rect(355,155,25,25);
 
  fill(255,255,255); //white
  rect(380,155,25,25);
 
  fill(234,120,43);
  rect(405,155,25,25);
  rect(430,155,25,25);
  rect(455,155,25,25);
 
  //7th row
 
  rect(130,180,25,25);
  rect(155,180,25,25);
  rect(180,180,25,25);
 
  fill(255,255,255);
  rect(205,180,25,25);
 
  fill(0,0,0);
  rect(230,180,25,25);
  rect(255,180,25,25);
  rect(280,180,25,25);
  rect(305,180,25,25);
  rect(330,180,25,25);
  rect(355,180,25,25);
 
  fill(255,255,255);
  rect(380,180,25,25);
 
  fill(234,120,43);
  rect(405,180,25,25);
  rect(430,180,25,25);
  rect(455,180,25,25);
 
  //8th
 
  rect(105,205,25,25);
  rect(130,205,25,25);
  rect(155,205,25,25);
  rect(180,205,25,25);
 
  fill(255,255,255);
  rect(205,205,25,25);
 
  fill(0,0,0);
  rect(230,205,25,25);
 
  fill(255,255,255);
  rect(255,205,25,25);
 
  fill(234,120,43);
  rect(280,205,25,25);
  rect(305,205,25,25);
 
  fill(255,255,255);
  rect(330,205,25,25);
 
  fill(0,0,0);
  rect(355,205,25,25);
 
  fill(255,255,255);
  rect(380,205,25,25);
 
  fill(234,120,43);
  rect(405,205,25,25);
  rect(430,205,25,25);
  rect(455,205,25,25);
  rect(480,205,25,25);
 
  //9th
 
  rect(105,230,25,25);
  rect(130,230,25,25);
  rect(155,230,25,25);
  rect(180,230,25,25);
 
  fill(255,255,255);
  rect(205,230,25,25);
  rect(230,230,25,25);
  rect(255,230,25,25);
 
  fill(234,120,43);
  rect(280,230,25,25);
  rect(305,230,25,25);
 
  fill(255,255,255);
  rect(330,230,25,25);
  rect(355,230,25,25);
  rect(380,230,25,25);
 
  fill(234,120,43);
  rect(405,230,25,25);
  rect(430,230,25,25);
  rect(455,230,25,25);
  rect(480,230,25,25);
 
  //10th
 
  rect(105,255,25,25);
  rect(130,255,25,25);
  rect(155,255,25,25);
  rect(180,255,25,25);
  rect(205,255,25,25);
  rect(230,255,25,25);
  rect(255,255,25,25);
  rect(280,255,25,25);
  rect(305,255,25,25);
  rect(330,255,25,25);
  rect(355,255,25,25);
  rect(380,255,25,25);
  rect(405,255,25,25);
  rect(430,255,25,25);
  rect(455,255,25,25);
  rect(480,255,25,25);
 
  //11th
 
  rect(130,280,25,25);
  rect(155,280,25,25);
  rect(180,280,25,25);
  rect(205,280,25,25);
 
  fill(255,215,134);
  rect(230,280,25,25);
  rect(255,280,25,25);
  rect(280,280,25,25);
  rect(305,280,25,25);
  rect(330,280,25,25);
  rect(355,280,25,25);
 
  fill(234,120,43);
  rect(380,280,25,25);
  rect(405,280,25,25);
  rect(430,280,25,25);
  rect(455,280,25,25);
 
  //12th
 
  fill(255,215,134);
  rect(205,305,25,25);
  rect(230,305,25,25);
  rect(255,305,25,25);
  rect(280,305,25,25);
  rect(305,305,25,25);
  rect(330,305,25,25);
  rect(355,305,25,25);
  rect(380,305,25,25);
 
  //13th
 
  fill(0,0,0);
  rect(155,330,25,25);
  rect(180,330,25,25);
 
  fill(255,215,134);
  rect(205,330,25,25);
  rect(230,330,25,25);
  rect(255,330,25,25);
  rect(280,330,25,25);
  rect(305,330,25,25);
  rect(330,330,25,25);
  rect(355,330,25,25);
  rect(380,330,25,25);
 
  //14th
 
  fill(0,0,0);
  rect(130,355,25,25);
  rect(155,355,25,25);
  rect(180,355,25,25);
  rect(205,355,25,25);
  rect(230,355,25,25);
 
  fill(255,215,134);
  rect(255,355,25,25);
  rect(280,355,25,25);
  rect(305,355,25,25);
  rect(330,355,25,25);
  rect(355,355,25,25);
 
  fill(0,0,0);
  rect(380,355,25,25);
  rect(405,355,25,25);
 
  //15th
 
  rect(130,380,25,25);
  rect(155,380,25,25);
  rect(180,380,25,25);
  rect(205,380,25,25);
  rect(230,380,25,25);
  rect(255,380,25,25);
 
  fill(255,215,134);
  rect(280,380,25,25);
  rect(305,380,25,25);
  rect(330,380,25,25);
 
  fill(0,0,0);
  rect(355,380,25,25);
  rect(380,380,25,25);
  rect(405,380,25,25);
   
  //16th
   
  rect(155,405,25,25);
  rect(180,405,25,25);
  rect(205,405,25,25);
  rect(230,405,25,25);
  rect(255,405,25,25);
  rect(330,405,25,25);
  rect(355,405,25,25);
  rect(380,405,25,25);
}
 }
 
 --
 //TAB D
 
 class Coin{
  //VARIABLES
  float  x = 0;
  float  y = 0;
  Coin(){
}

void display(){
  fill(255,215,0); //coin parts
  ellipse(175,175,80,80);
  fill(#daa700);
  rect(165,150,20,50);
}
}

--
//TAB E

class Timer{
  float startTime, stopTime;
   boolean started = false;  
  
  Timer(float _stopTime){
    stopTime = _stopTime;
  }
  void timerStart(){
    startTime = millis();
    started = true;
  }
  
  void stopTimer(){
    started = false;
    println("time stopped");
  }
  boolean isFinished(){
    float passedTime = millis() - startTime;
    if((passedTime > stopTime) && (started)) {
      return true;
    } else {
      return false;
    }
  }
}

--
//END!!
