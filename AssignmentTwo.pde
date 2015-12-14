void setup() {

  size(1280,800);
  background(255);

  //top left
  fill(0);
  rect(1,1,200,200);
  
  stroke(255);
  strokeWeight(3);
  fill(120);
  rect(30,30,200,200);
  
  stroke(0);
  strokeWeight(2);
  fill(150);
rect(100,150,200,200);
  
  stroke(0);
  strokeWeight(0);
  fill(60);
  triangle(300,400,200,350,400,150);
  
  triangle(300,400,200,400,400,300);
  
  //top middle
  fill(150);
  arc(400,1,300,300,0,QUARTER_PI);
  
  fill(89);
  arc(450,1,300,300,0,QUARTER_PI);
  
  fill(0);
  strokeWeight(3);
  line(600,100,650,200);
  
  line(600,150,650,250);
  line(650,200,650,300);
  
  //middle
  fill(150);
   ellipse(650,350,120,120);
  stroke(255);
  ellipse(650,350,100,100);
  stroke(0);
  fill(150);
   ellipse(650,450,120,120);
  stroke(255);
  ellipse(650,450,100,100);
  stroke(0);
  fill(150);
   ellipse(650,550,120,120);
  stroke(255);
  ellipse(650,550,100,100);
    stroke(0);
  fill(150);
   ellipse(350,550,120,120);
  stroke(255);
  ellipse(350,550,100,100);
    stroke(0);
  fill(150);
   ellipse(450,550,120,120);
  stroke(255);
  ellipse(450,550,100,100);
  
stroke(0);
strokeWeight(5);
  line(350,550,650,550);
  
  
  stroke(255);
  strokeWeight(50);
  point(650,550);
  
  strokeWeight(30);
  point(650,350);
  
  //bottom left
  strokeWeight(0);
    fill(0);
    stroke(0);
  beginShape();
  vertex(120,500);
  vertex(120,1200);
  vertex(1,1200);
  vertex(120,500);
endShape(CLOSE);  

    fill(150);
    stroke(0);
  beginShape();
  vertex(130,500);
  vertex(130,1200);
  vertex(1,1200);
  vertex(130,500);
endShape(CLOSE);  
    fill(0);
    stroke(0);
  beginShape();
  vertex(150,500);
  vertex(150,1200);
  vertex(1,1200);
  vertex(150,500);
endShape(CLOSE);  
    fill(150);
    stroke(0);
  beginShape();
  vertex(160,500);
  vertex(160,1200);
  vertex(1,1200);
  vertex(160,500);
endShape(CLOSE);  


}

//dont remember how to stop trail
void draw() {
  
  rect(1000, mouseX, 10, mouseY);
  rect(1200, mouseX, 10, mouseY);
  
  fill(60);
  rect(1100, mouseX, 50, mouseY);
  
  rect(900, mouseX, 20, mouseY);

}
void loop() {
}
