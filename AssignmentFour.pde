int pressed = 0;
int pressedState = 0;

void setup(){
  size(1400,1000);
}

void draw() {
  background(255);
  fill(0);
  rectMode(CORNERS);
  rect(0,1000,1400,800);
  rect(0,0,100,800);
  rect(0,100,1400,0);
  rect(1400,0,1300,800);
  textSize(100);
  fill(255);
  text("Scumbag", 475, 900);
  textSize(15);
  text("Because it could be anyone", 600,950);
  
  
  beginShape();

vertex(100,800);
vertex(110,790);
vertex(110,780);
vertex(120,770);
vertex(120,680);
vertex(200,640);
vertex(230,640);
vertex(220,660);
vertex(230,680);
vertex(220,700);
vertex(240,710);
vertex(230,730);
vertex(230,750);
vertex(240,800);
vertex(300,800);
vertex(300,780);
vertex(290,760);
vertex(290,700);
vertex(285,650);
vertex(290,730);
vertex(300,720);
vertex(310,650);
vertex(300,720);
vertex(340,730);
vertex(335,720);
vertex(330,650);
vertex(230,640);
vertex(330,650);
vertex(335,720);
vertex(340,730);
vertex(380,780);
vertex(360,800);
vertex(380,780);
vertex(400,750);
vertex(400,730);
vertex(430,700);
vertex(440,700);
vertex(460,750);
vertex(470,750);
vertex(470,800);
vertex(470,750);
vertex(460,750);
vertex(440,700);
vertex(430,700);
vertex(440,640);
vertex(450,630);
vertex(450,660);
vertex(470,660);
vertex(470,800);
vertex(470,660);
vertex(480,620);
vertex(500,650);
vertex(520,700);
vertex(500,720);
vertex(520,760);
vertex(510,800);
vertex(550,800);
vertex(590,660);
vertex(480,620);
vertex(590,660);
vertex(610,680);
vertex(620,700);
vertex(625,710);
vertex(625,800);

endShape();
  
  fill(0);
  ellipse(370,500,400,400);
  
  fill(255);
  ellipse(400,770,10,10);
  
  if(mousePressed)
  textSize(300);
    text("?",320,600);

    
  
}
