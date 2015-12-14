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
