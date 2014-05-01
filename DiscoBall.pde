class DiscoBall {
  boolean spin = false;
  boolean[] light = {false,false,false};
  int[][] colors = {{254,254,254},{254,254,254},{254,254,25}};
  
  DiscoBall() {
  }
  
  void spin() {
    spin = true;
  }
  void noSpin() {
    spin = false;
  }
  
  void light(int index) {
    light[index] = true;
  }
  void noLight(int index) {
    light[index] = false;
  }
    
  void setColor(int index, int tempR, int tempG, int tempB) {
    colors[index][0] = tempR;
    colors[index][1] = tempG;
    colors[index][2] = tempB;
  }
  
  void draw(int tempX, int tempY){
    stroke(255);
    
    ellipseMode(CORNER);
    if(spin){
      fill(255);
    } else {
      fill(0);
    }
    ellipse(tempX+25,tempY+20,100,100);
    
    if(light[0]){
      fill(colors[0][0],colors[0][1],colors[0][2]);
    } else {
      fill(0);
    }
    quad(tempX+25,tempY+5,tempX+10,tempY+15,tempX+25,tempY+35,tempX+40,tempY+25);
    
    if(light[1]){
      fill(colors[1][0],colors[1][1],colors[1][2]);
    } else {
      fill(0);
    }
    quad(tempX+125,tempY+5,tempX+140,tempY+15,tempX+125,tempY+35,tempX+110,tempY+25);
    
    if(light[0]){
      fill(colors[2][0],colors[2][1],colors[2][2]);
    } else {
      fill(0);
    }
    rect(tempX+65,tempY+125,20,25);
    
  }
}
