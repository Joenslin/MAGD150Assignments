int i=0;
 
void setup () {
  size (600, 600);
  background (0);
  smooth ();
  noStroke ();
 
  for (i=0; i<=60; i+=8) {
    int x=width;
    int y=height;
 
    drawBlueEllipses (random (x), random (y), i, i, 1.5);
    drawBlueEllipses (random (x), random (y), i, i, 0.5);
    drawBlueEllipses (random (x), random (y), i, i, 1.5);
    drawBlueEllipses (random (x), random (y), i, i, 0.5);
    drawBlueEllipses (random (x), random (y), i, i, 1.5);
    drawBlueEllipses (random (x), random (y), i, i, 0.5);
    drawBlueEllipses (random (x), random (y), i, i, 1.5);
    drawBlueEllipses (random (x), random (y), i, i, 0.5);
    drawPurpleEllipses (random (x), random (y), i, i, 2.5);
    drawPurpleEllipses (random (x), random (y), i, i, 2.5);
    drawPurpleEllipses (random (x), random (y), i, i, 2.5);
    drawPurpleEllipses (random (x), random (y), i, i, 2.5 );
    drawPurpleEllipses (random (x), random (y), i, i, 2.5);
    drawPurpleEllipses (random (x), random (y), i, i, 2.5 );
    drawPurpleEllipses (random (x), random (y), i, i, 2.5);
    drawPurpleEllipses (random (x), random (y), i, i, 2.5 );
    drawYellowEllipses (random (x), random (y), i, i, 1.5);
    drawYellowEllipses (random (x), random (y), i, i, 0.5);
    drawYellowEllipses (random (x), random (y), i, i, 1.5);
    drawYellowEllipses (random (x), random (y), i, i, 0.5);
    drawYellowEllipses (random (x), random (y), i, i, 1.5);
    drawYellowEllipses (random (x), random (y), i, i, 0.5);
    drawYellowEllipses (random (x), random (y), i, i, 1.5);
    drawYellowEllipses (random (x), random (y), i, i, 0.5);
 
    drawBlueEllipses (x, y, i, i, 1.5);
    drawBlueEllipses (x, y, i, i, 1.8);
    drawBlueEllipses (4*x, y, i, i, 1.5);
    drawBlueEllipses (2*x, y/2, i, i, 1.8);
    drawBlueEllipses (x, y/3, i, i, 1.8);
    drawPurpleEllipses (8*x, 7*y, i, i, 3.5);
    drawPurpleEllipses (x, y/3, i, i, 3.5);
    drawPurpleEllipses (x, y/2, i, i, 3.5);
    drawPurpleEllipses (2*x, 3*y, i, i, 4.0);
    drawPurpleEllipses (0, 4*y, i, i, 4.0);
    drawPurpleEllipses (4*x, 0, i, i, 4.0);
    drawYellowEllipses (x/3, y/2, i, i, 1.5);
    drawYellowEllipses (3*x/4, y, i, i, 1.5);
    drawYellowEllipses (5*x/7, 6*y, i, i, 1.5);
    drawYellowEllipses (0, y, i, i, 2.5);
    drawYellowEllipses (x, y, i, i, 2.5);
  }
  for (i=0; i<=30; i+=5) {
    int x=width;
    int y=height;
 
    drawCenter (x, y, 6, 6);
    drawCenter (x, y, 6, 6);
    drawCenter (4*x, y, 6, 6);
    drawCenter (2*x, y, 6, 6);
    drawCenter (x, y, 6, 6);
 
    drawCenter (8*x, 7*y, 5, 5);
    drawCenter (x/2, y/3, 5, 5);
    drawCenter (x/7, y/2, 5, 5);
    drawCenter (0, 4*y, 5, 5);
    drawCenter(2*x, 3*y, 5, 5);
    drawCenter (4*x, 0, 5, 5);
 
    drawCenter (x, y, 5, 5);
    drawCenter (3*x/4, y, 5, 5);
    drawCenter (5*x, 6*y/8, 5, 5);
    drawCenter (x, y, 5, 5);
    drawCenter (0, y, 5, 5);
  }
}
void drawBlueEllipses (float x, float y, int w, int h, float scal) {
  fill (0, 0, 255, 80-i);
  ellipse (x, y, w*scal, h*scal);
}
void drawPurpleEllipses (float x, float y, int w, int h, float scal) {
  fill (200, 0, 200, 50-i);
  ellipse (x, y, w*scal, h*scal);
}
void drawYellowEllipses (float x, float y, int w, int h, float scal) {
  fill (250, 240, 13, 90-i);
  ellipse (x, y, w*scal, h*scal);
}
//function for the centers of the stars
void drawCenter (float x, float y, int w, int h) {
  fill (244);
  ellipse (x, y, w, h);
}





 
// draws random stars to depict the stars twinkling
void draw () {
  float x=width;
  float y=height;
  frameRate (10);
 
  drawCenter (random (x), random (y), 1, 1);
  drawCenter (random (x), random (y), 3, 3);



}
void mousePressed() {
  noLoop();
}
void mouseReleased() {
  loop();
}
