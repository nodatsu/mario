class Mario {
  PVector pos;
  PVector size;
  
  Mario(float px, float py) {
    pos = new PVector(px, py);
    size = new PVector(100, 100);
  }
  
  void update() {
    pushMatrix();
    translate(pos.x, pos.y);
    fill(0);
    ellipse(0, 0, size.x, size.y);
    popMatrix();
  } 
}
