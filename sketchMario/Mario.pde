class Mario {
  PVector pos;
  PVector dim;
  PImage img;
  float jump = 0.0;
  
  Mario(float px, float py) {
    pos = new PVector(px, py);
    dim = new PVector(50, 50);
    
    img = loadImage("mario.jpg");
  }
  
  void update() {
    jump();
    
    pushMatrix();
    translate(pos.x, pos.y);
    image(img, 0, 0, dim.x, dim.y);
    popMatrix();
  } 
  
  void jump() {
    pos.y += jump * 0.1;
    jump *= 0.9;
  }
}
