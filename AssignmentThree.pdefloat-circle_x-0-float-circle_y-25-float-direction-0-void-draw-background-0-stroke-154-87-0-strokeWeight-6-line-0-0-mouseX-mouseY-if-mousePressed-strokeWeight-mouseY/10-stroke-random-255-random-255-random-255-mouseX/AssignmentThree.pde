float circle_x = 0;
float circle_y = 25;
float direction = 0;

void draw() {
  background(0);
  stroke(154,87,0);
  strokeWeight(6);
  line(0,0,mouseX,mouseY);
  
  if(mousePressed){
    strokeWeight (mouseY/10);
    stroke(random(255),random(255),random(255),mouseX/3);
    line(random(width),random(height),random(width),random(height));
  }
  
  noFill();
  stroke(255,0,0);
  ellipse(mouseX,mouseY,50,50);

strokeWeight(8);
  point(0,0);
  
  strokeWeight(8);
  point(800,800);
  
  
  
}
void setup()   {
  size(800,800);
  background(0);
  frameRate(50);
  stroke(255,0,0);
  

  rect(100,100,600,600);
  fill(255,0,0);
 ellipse(600,750,75,75);
 fill(0,0,255);
  ellipse(700,750,75,75);
  fill(222,184,135);
  rect(750,100,700,600);
  rect(0,100,50,600);
  
}
  
void loop(){
  
  
}
