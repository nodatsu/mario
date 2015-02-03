class Mario {
  PVector pos;
  PVector dim;
  PImage img;
  
  Mario(float px, float py) {
    pos = new PVector(px, py);
    dim = new PVector(50, 50);
    
    img = loadImage("mario.jpg");
  }
  
  void update() {
    pushMatrix();
    translate(pos.x, pos.y);
    image(img, 0, 0, dim.x, dim.y);
    popMatrix();
  } 
}
