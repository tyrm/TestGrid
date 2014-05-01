class Grid {
  int w,h;
  int buffer[][][];
  int active[][][];
  
  Grid(int tempW, int tempH) {
    w = tempW;
    h = tempH;
    buffer = new int[w][h][3];
    active = new int[w][h][3];
  }
  
  void setPixel(int tempX, int tempY,int tempR, int tempG, int tempB) {
    buffer[tempX][tempY][0] = tempR;
    buffer[tempX][tempY][1] = tempG;
    buffer[tempX][tempY][2] = tempB;
  }
  
  void setPixels(int tempXa, int tempYa, int tempXb, int tempYb, int tempR, int tempG, int tempB) {
    if ((tempXa < w || tempYa < h) && (tempXa < tempXb && tempYa < tempYb)) {
      if (tempXb >= w) {tempXb = w-1;}
      if (tempYb >= h) {tempYb = h-1;}
      for (int x=0;x<(tempXb-tempXa)+1;x++) {
        for (int y=0;y<(tempYb-tempYa)+1;y++) {
          buffer[tempXa+x][tempYa+y][0] = tempR;
          buffer[tempXa+x][tempYa+y][1] = tempG;
          buffer[tempXa+x][tempYa+y][2] = tempB;
        }
      }
    }
  }
  
  void update() {
    arrayCopy(buffer,active);
  }
  
  void draw(int tempX,int tempY,int cellSize) {
    stroke(255);
    for (int x=0;x<w;x++) {
      for (int y=0;y<h;y++) {
        fill(active[x][y][0],active[x][y][1],active[x][y][2]);
        rect(tempX+(x*cellSize),tempY+(y*cellSize),cellSize,cellSize);
      }
    }
  }
}
