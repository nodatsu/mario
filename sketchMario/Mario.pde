class Mario {
  PVector pos;
  PVector dim;
  PVector vel;
  PVector gravity;
  PImage imgStandR, imgStandL, imgJumpR, imgJumpL, img;
  boolean ground;
  boolean dirR;
  
  Mario(float px, float py) {
    pos = new PVector(px, py);
    dim = new PVector(50, 50);
    vel = new PVector(0, 0);
    gravity = new PVector(0, 0.5);
    imgStandR = loadImage("ProfessorT_standR.png");
    imgJumpR = loadImage("ProfessorT_jumpR.png");
    imgStandL = loadImage("ProfessorT_standL.png");
    imgJumpL = loadImage("ProfessorT_jumpL.png");
    img = imgStandR;
    ground = false;
    dirR = true;
  }

  void update() {
    pos.add(vel);
    vel.add(gravity);
    
    if (!keyPressed && ground) {
      vel.x = 0;
    }
    
    if (vel.x > 0) {
      dirR = true;
    }
    else if (vel.x < 0) {
      dirR = false;
    }
    else {}
    
    if (ground) {
      if (dirR) {
        img = imgStandR;
      }
      else {
        img = imgStandL;
      }
    }
    else {
      if (dirR) {
        img = imgJumpR;
      }
      else {
        img = imgJumpL;
      }
    }
    
    image(img, pos.x, pos.y, dim.x, dim.y);
  }
  
  void input(int k) {
    switch (k) {
      case LEFT:  vel.x = max(-5.0, vel.x - 5.0);  break;
      case RIGHT: vel.x = min( 5.0, vel.x + 5.0);  break;
      case UP:    if (ground) vel.y -= 15.0;  break;
      case DOWN:  vel.y += 1.0;  break;
    }
  }  
}
