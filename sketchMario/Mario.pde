class Mario {
  PVector pos;
  PVector dim;
  PVector vel;
  PVector gravity;
  boolean ground;
  PImage img;

  Mario(float px, float py) {
    pos = new PVector(px, py);
    dim = new PVector(50, 50);
    vel = new PVector(0, 0);
    gravity = new PVector(0, 1.0);
    ground = false;
    img = loadImage("marioA.gif");
  }

  void update() {
    pos.add(vel);
    vel.add(gravity);
    if (!keyPressed && ground) vel.x = 0;
    
    fill(255, 0, 0);
    image(img, pos.x, pos.y, dim.x, dim.y);
  }
  
  void input(int k) {
    switch (k) {
      case LEFT:  vel.x = max( -5.0, vel.x -  5.0);  break;
      case RIGHT: vel.x = min(  5.0, vel.x +  5.0);  break;
      case UP:    if (ground) vel.y = max(-25.0, vel.y - 25.0);  break;
      case DOWN:  vel.y = min(  5.0, vel.y +  5.0);  break;
    }
  }
}
