class Mario {
  PVector pos;
  PVector dim;
  PVector vel;
  PVector gravity;
  PImage img;

  Mario(float px, float py) {
    pos = new PVector(px, py);
    dim = new PVector(50, 50);
    vel = new PVector(0, 0);
    gravity = new PVector(0, 0.1);
    img = loadImage("marioA.gif");
  }

  void update() {
    pos.add(vel);
    vel.add(gravity);
    
    fill(255, 0, 0);
    image(img, pos.x, pos.y, dim.x, dim.y);
  }
  
  void input(int k) {
    switch (k) {
      case LEFT:  vel.x -= 1.0;  break;
      case RIGHT: vel.x += 1.0;  break;
      case UP:    vel.y -= 1.0;  break;
      case DOWN:  vel.y += 1.0;  break;
    }
  }  
}
