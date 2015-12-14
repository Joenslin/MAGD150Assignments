PImage img;
class Cell{                                 
  float xlocation;
  float ylocation;
  float dia;
  boolean seed;
  float cellred, cellgreen, cellblue;
  float lineweight;
   
   
  
  Cell(){                                    
      
    xlocation = random(0,500);
    ylocation = random(0,500);
    dia = 7.5;
    seed = false;
    cellred = 250;
    cellgreen = 220;
    cellblue = 170;
  }
  
  void display(){                              // method or function
   stroke(130);
   fill(cellred,cellgreen,cellblue);
   ellipse(xlocation,ylocation,dia,dia);
  }
   
  void update(){
    xlocation = xlocation+random(-0.5,0.5);   
    ylocation = ylocation+random(-0.5,0.5);
     
  }
  }
   
 
 
Cell[] myCells = new Cell[50];   
 
Cell myCell;                     
 
void setup(){
 size(500,500);
  img = loadImage("bacteria2.jpg");
 for (int i=0; i <myCells.length; i++){     
 myCells[i] = new Cell();                     
}
}
 
void draw(){
  background(255);
  image(img,0,0,width,height);
  frameRate(100);                            
  for (int i=0; i <myCells.length; i++){
 myCells[i].display();                       
 myCells[i].update();
}
}
