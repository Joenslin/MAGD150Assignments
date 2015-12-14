PImage img;
float speedX = 1;
float speedY = 0;
float x = 100;
float y = 80;
float w = 50;
float h = 50;
 

Ball ball1;
Ball ball2;
Ball ball3;
Ball ball4;
 
 
void setup(){
  img = loadImage("steak.jpg");
  size(500,500);
  ball1=new Ball(color(160,82,45),25,20,3,6);
  ball1.diameter=50;
  ball2=new Ball(color(139,69,19),20,20,2,4);
  ball2.diameter=40;
  smooth();
}


 
void draw(){
   background(255);
   image(img,0,100);
     image(img,0,0,width,height);
   ball1.move();
   ball2.move();
    boolean isIntersect=ball1.isIntersecting(ball2);
    if(isIntersect){
    }
   ball1.display();
   ball2.display();
     ellipse(x, y, w, h);
  speedY = speedY + 0.5;
  x = x + speedX;
  y = y + speedY;
  if ((x > width - w) || (x <= 0)) {
    speedX = -speedX;
  }
  if (y > height - h) {
    y = height - h;
    speedY = speedY * -0.9;
  }
  else if (y <= 0) {
    speedY = -speedY;
  }
}

 
 
class Ball{
 
    color currentColor;  
    PVector position;
    PVector speed;
    float diameter; 
 

    Ball(){  
      this(color(255,0,0), width/2, height/2, 3, 5 );  
    }
   Ball(color _c, float _xpos,float _ypos, float _xspeed, float _yspeed){
      currentColor=_c;
      position=new PVector(_xpos,_ypos);
      speed=new PVector(_xspeed,_yspeed);
    }
    void display(){
       fill(currentColor);
       ellipse(position.x,position.y,diameter,diameter);
    }
    void move(){
      position.add(speed);
      if(position.x > (width-diameter/2) || position.x < (0+diameter/2)){ 
        speed.x *= -1;
      }
      if(position.y > (height-diameter/2) || position.y <(0+diameter/2)){
        speed.y *=-1;
      }
    }
   
     boolean isIntersecting(Ball otherBall){
        float distance= PVector.dist(this.position, otherBall.position);  
      
        if( distance <= (this.diameter / 2) + (otherBall.diameter / 2)){
          return true;
        }
        return false;
    } 
}
void mousePressed() {
 
  speedX = random(-20, 20);     
  speedY = -30;
}
