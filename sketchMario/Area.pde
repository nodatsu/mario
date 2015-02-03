class Stage {
  PVector pos;
  PVector size;
  Mario mario;

  Stage(float px, float py, float sx, float sy) {
    pos = new PVector(px, py);
    size = new PVector(sx, sy);
    
    mario = new Mario(100, 100);
  }
 
  void update() {
    pushMatrix();
    translate(pos.x, pos.y);
    
    fill(0, 255, 255, 64);
    rect(0, 0, size.x, size.y);
    
    mario.update();
    
    popMatrix();
  } 
}
