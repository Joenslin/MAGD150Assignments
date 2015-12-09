Particle[] particles = new Particle[0];
int maxParticles =100;
PImage img;
PImage photo;
void setup () {
  size (600, 365);
  img = loadImage("log.jpg");
  photo = loadImage("door.jpg");
}
void draw() {
  background(153,76,0);
  image(img,0,0);
  image(photo,400,0);
  fill(0);
  fill(0,102,51);
  rect(200,70,200,260);
  fill(255);
  rect(220,100,158,200);
  fill(204,102,0);
  ellipse(300,270,50,40);
  ellipse(320,280,30,20);
  fill(204,0,0);
  rect(250,290,100,10);
  fill(0,102,51);
  rect(220,200,158,1);
  rect(300,100,1,200);
  fill(255);
  particles = (Particle[]) append(particles, new Particle(300, 0));
  if (particles.length>maxParticles) {
    particles = (Particle[]) subset(particles, 1);
  }
  for (int i=0; i<particles.length; i++) {
      particles[i].x += particles[i].xVel;
      particles[i].y += particles[i].yVel;
  ellipse(particles[i].x, particles[i].y, particles[i].particlesize, particles[i].particlesize);
  }
}
class Particle { 
  float x;        
  float y;        
  float xVel;     
  float yVel;      
  float particlesize;   
  Particle(float xpos, float ypos) {
    x = xpos = random (0,600);
    y = ypos;
    xVel = random (-1, 2);  
    yVel = random (0, 3);   
    particlesize = random (2, 7);
  }
}
