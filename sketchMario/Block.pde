class Block {
  PVector pos;
  PVector dim;
  
  Block(float px, float py, float sx, float sy) {
    pos = new PVector(px, py);
    dim = new PVector(sx, sy);
  }
  
  void show() {
    fill(128);
    rect(pos.x, pos.y, dim.x, dim.y);
  }
}
