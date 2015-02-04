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

  void regist(Mario m) {
    PVector next = PVector.add(m.pos, m.vel);
    
    if (pos.x < next.x + m.dim.x && next.x < pos.x + dim.x) {
      if (pos.y < next.y + m.dim.y && next.y < pos.y + dim.y) {
        m.vel.x = 0;
        m.vel.y = 0;
        m.acc.x = 0;
        m.acc.y = 0;
      }
    }
  }
}
