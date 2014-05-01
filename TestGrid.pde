Grid expidt;
DiscoBall disco;

void setup() {
  expidt = new Grid(10,5);
  disco = new DiscoBall();
  
  size(640,480);
  background(0);
  
  expidt.setPixel(0,3,255,0,0);
  expidt.setPixels(5,3,5,5,0,254,254);
  
  expidt.update();
  
  disco.spin();
  disco.setColor(1,0,128,254);
  disco.light(1);
  
}

void draw() {
  clear();
  expidt.draw(10,10,20);
  disco.draw(220,10);
}
