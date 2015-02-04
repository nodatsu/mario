class Block {
  PVector pos;
  PVector dim;
  PImage img;
  
  Block(float px, float py, float sx, float sy) {
    pos = new PVector(px, py);
    dim = new PVector(sx, sy);
    img = loadImage("block.jpg");
  }
  
  void show() {
    fill(128);
    image(img, pos.x, pos.y, dim.x, dim.y);
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
    
    // upper side
    if (mcLR.x > bcUL.x && mcLL.x < bcUR.x) {
      if (mcLL.y <= bcUL.y && mcLL.y + m.vel.y >= bcUL.y) {
        m.vel.y = 0;
        m.pos.y = bcUL.y - m.dim.y;
      }
    } 
    
    // lower side
    if (mcUR.x > bcLL.x && mcUL.x < bcLR.x) {
      if (mcUL.y >= bcLL.y && mcUL.y + m.vel.y <= bcLL.y) {
        m.vel.y = 0;
        m.pos.y = bcLL.y;
      }
    }
    
    // left side
    if (mcLR.y > bcUL.y && mcUR.y < bcLL.y) {
      if (mcUR.x <= bcUL.x && mcUR.x + m.vel.x >= bcUL.x) {
        m.vel.x = 0;
        m.pos.x = bcUL.x - m.dim.x;
      }
    }
    
    // right side
    if (mcLL.y > bcUR.y && mcUL.y < bcLR.y) {
      if (mcUL.x >= bcUR.x && mcUL.x + m.vel.x <= bcUR.x) {
        m.vel.x = 0;
        m.pos.x = bcUR.x;
      }
    }    
  }
}
