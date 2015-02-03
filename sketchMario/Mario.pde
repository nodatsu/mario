class Mario {
  PVector pos;
  PVector dim;

  Mario(float px, float py) {
    pos = new PVector(px, py);
    dim = new PVector(50, 50);
  }

  void update() {
    fill(255, 0, 0);
    rect(pos.x, pos.y, dim.x, dim.y);
  }
}
