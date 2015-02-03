class Mario {
  PVector pos;
  PVector dim;
  
  Mario(float px, float py) {
    pos = new PVector(px, py);
    dim = new PVector(50, 50);
  }
  
  void update() {
    pushMatrix();
    translate(pos.x, pos.y);
    fill(0);
    ellipse(0, 0, dim.x, dim.y);
    popMatrix();
  } 
}
