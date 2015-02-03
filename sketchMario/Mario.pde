class Mario {
  PVector pos;
  PVector dim;
  PImage img;
  PVector vel;
  boolean col = false;
  
  Mario(float px, float py) {
    pos = new PVector(px, py);
    dim = new PVector(50, 50);
    img = loadImage("mario.jpg");
    vel = new PVector(0, 0);
  }
  
  void update() {
    if (!col) move();

    pushMatrix();
    translate(pos.x, pos.y);
    image(img, 0, 0, dim.x, dim.y);
    popMatrix();
  } 
  
  void move() {
    pos.add(vel);
    
    vel.y += 0.1;
  }
}
