class Mario {
  PVector pos;
  PVector dim;
  PVector vel;

  Mario(float px, float py) {
    pos = new PVector(px, py);
    dim = new PVector(50, 50);
    vel = new PVector(0, 0);
  }

  void update() {
    pos.add(vel);
    vel.add(gravity);
    
    fill(255, 0, 0);
    rect(pos.x, pos.y, dim.x, dim.y);
  }
  
  void move(int k) {
    switch (k) {
      case LEFT:  vel.x -= 1.0;  break;
      case RIGHT: vel.x += 1.0;  break;
      case UP:    vel.y -= 20;   break;
    }
  }
}
