void setup(){
  size(800,800,P3D);
  colorMode(RGB,255);
  ortho();
  noLoop();
}

void draw(){
  color[] colors = new color[4];
  colors[0] = color(49,194,217); //lblue
  colors[1] = color(50,145,216); //dblue
  colors[2] = color(252,184,0); //yellow
  colors[3] = color(254,128,0); //orange

  float side = 75;
  
  noStroke();
  background(colors[0]);
  
  translate(width/2, height/2, 0);
  
  rotateX(radians(-90));
  rotateX(radians(-35.264));
  rotateZ(radians(45));
  
  translate(0,0,height);
  
  pushStyle();
  stroke(255,0,0);
  line(0,0,0,1000,0,0);
  stroke(0,255,0);
  line(0,0,0,0,1000,0);
  stroke(0,0,255);
  line(0,0,0,0,0,1000);
  popStyle();
  
  for(int y=0; y<20; y++){
    for(int x=0; x<20; x++){
      int tally = 0;
      pushMatrix();
      
      //put 0,0 at bottom of tile 
      translate(x*side,y*side);
      
      fill(colors[floor(random(1,4))]);
      //bottom base
      if (random(0,1)>0.5){
        rect(0,0,side,side);
        tally++;
      }
      
      fill(colors[floor(random(1,4))]);
      //top
      if (random(0,1)>0.85 && tally<3){
        pushMatrix();
        translate(0,0,-side);
        rect(0,0,side,side);
        tally++;
        popMatrix();
      }
      
      fill(colors[floor(random(1,4))]);
      //bottom left
      if (random(0,1)>0.75 && tally<3){
        pushMatrix();
        rotateY(radians(90));
        rect(0,0,side,side);
        tally++;
        popMatrix();
      }
      
      fill(colors[floor(random(1,4))]);
      //bottom right
      if (random(0,1)>0.75 && tally<3){
        pushMatrix();
        rotateX(radians(-90));
        rect(0,0,side,side);
        tally++;
        popMatrix();
      }
      
      popMatrix();
    }
  }
  
  
}
