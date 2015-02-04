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
    PVector bcUL = new PVector(pos.x,         pos.y);
    PVector bcUR = new PVector(pos.x + dim.x, pos.y);
    PVector bcLL = new PVector(pos.x,         pos.y + dim.y);
    PVector bcLR = new PVector(pos.x + dim.x, pos.y + dim.y);
    PVector mcUL = new PVector(m.pos.x,           m.pos.y);
    PVector mcUR = new PVector(m.pos.x + m.dim.x, m.pos.y);
    PVector mcLL = new PVector(m.pos.x,           m.pos.y + m.dim.y);
    PVector mcLR = new PVector(m.pos.x + m.dim.x, m.pos.y + m.dim.y);
    
    // left side
    if ((mcLR.y > bcUL.y && mcUR.y < bcLL.y) && (mcUR.x <= bcUL.x && mcUR.x + m.vel.x >= bcUL.x)) {
      if (m.vel.x > 0)  m.vel.x = 0;
    }
    
    // right side
    if ((mcLL.y > bcUR.y && mcUL.y < bcLR.y) && (mcUL.x >= bcUR.x && mcUL.x + m.vel.x <= bcUR.x)) {
      if (m.vel.x < 0)  m.vel.x = 0;
    }
    
    // over
    if ((mcLR.x > bcUL.x && mcLL.x < bcUR.x) && (mcLL.y <= bcUL.y && mcLL.y + m.vel.y >= bcUL.y)) {
      if (m.vel.y > 0) m.vel.y = 0;
    }
    
    // under
    if ((mcUR.x > bcLL.x && mcUL.x < bcLR.x) && (mcUL.y >= bcLL.y && mcUL.y + m.vel.y <= bcLL.y)) {
      if (m.vel.y < 0) m.vel.y = 0;
    }
  }
}
