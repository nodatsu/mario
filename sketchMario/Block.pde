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
//    PVector next = PVector.add(m.pos, m.vel);
    
    // left side
    if ((m.pos.x + m.dim.x <= pos.x && m.pos.x + m.dim.x + m.vel.x >= pos.x) && (m.pos.y + m.dim.y > pos.y && m.pos.y < pos.y + dim.y)) {
      if (m.vel.x > 0)  m.vel.x = 0;
    }
    // right side
    if ((m.pos.x >= pos.x + dim.x && m.pos.x + m.vel.x <= pos.x + dim.x) && (m.pos.y + m.dim.y > pos.y && m.pos.y < pos.y + dim.y)) {
      if (m.vel.x < 0)  m.vel.x = 0;
    }
    // over
    if ((m.pos.y + m.dim.y <= pos.y && m.pos.y + m.dim.y + m.vel.y >= pos.y) && (m.pos.x + m.dim.x > pos.x && m.pos.x < pos.x + dim.x)) {
      if (m.vel.y > 0)  m.vel.y = 0;
    }
    // under
    if ((m.pos.y >= pos.y + dim.y && m.pos.y + m.vel.y <= pos.y + dim.y) && (m.pos.x + m.dim.x > pos.x && m.pos.x < pos.x + dim.x)) {
      if (m.vel.x < 0)  m.vel.y = 0;
    }

    
//    if ((pos.x < next.x + m.dim.x && next.x < pos.x + dim.x) && (pos.y < next.y + m.dim.y && next.y < pos.y + dim.y)) {
//      if (pos.x < m.pos.x + m.dim.x && m.pos.x < pos.x + dim.x) {
//        m.vel.y = 0;
//        m.acc.y = 0;
//      }
//      else {
//        m.vel.x = 0;
//        m.acc.x = 0;
//      }
//    }
  }
}
