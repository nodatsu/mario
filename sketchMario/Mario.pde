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
    gravity = new PVector(0, 0.5);
    img = loadImage("marioA.gif");
  }

  void update() {
    pos.add(vel);
    vel.add(gravity);
    
    image(img, pos.x, pos.y, dim.x, dim.y);
  }
  
  void input(int k) {
    switch (k) {
      // ジャンプは着地しているときのみ
      // 着地している場合は横方向を停止する
      case LEFT:  vel.x = min(-5.0, vel.x - 5.0);  break;
      case RIGHT: vel.x = min( 5.0, vel.x + 5.0);  break;
      case UP:    vel.y -= 10.0;  break;
      case DOWN:  vel.y += 1.0;  break;
    }
  }  
}
