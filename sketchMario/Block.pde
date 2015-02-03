class Block {
  PVector pos;
  PVector dim;
  color col;
  
  Block(float px, float py, float sx, float sy) {
    pos = new PVector(px, py);
    dim = new PVector(sx, sy);
    
    col = color(255, 255, 0);
  }

  void update() {
    pushMatrix();
    translate(pos.x, pos.y);
    
    fill(col);
    rect(0, 0, dim.x, dim.y);
    
    popMatrix();
  }

}
