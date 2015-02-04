class Mario {
  //  AudioPlayer attack;

  PVector pos;
  PVector dim;
  PVector vel;
  PVector gravity;
  PImage imgWalkRight, imgWalkLeft, imgJumpRight, imgJumpLeft;
  boolean ground, right;

  Mario(float px, float py) {
    //    attack = minim.loadFile("attack.mp3", 2048);
    //    attack.rewind();

    pos = new PVector(px, py);
    dim = new PVector(50, 50);
    vel = new PVector(0, 0);
    gravity = new PVector(0, 0.5);
    imgWalkRight = loadImage("ProfessorT_WalkRight.png");
    imgWalkLeft = loadImage("ProfessorT_WalkLeft.png");
    imgJumpRight = loadImage("ProfessorT_JumpRight.png");
    imgJumpLeft = loadImage("ProfessorT_JumpLeft.png");
    ground = false;
    right = true;
  }

  void update() {
    pos.add(vel);
    vel.add(gravity);

    if (!keyPressed && ground) {
      vel.x = 0;
    }

    PImage img;
    if (ground) {    
      if (right) {
        img = imgWalkRight;
      }
      else {
        img = imgWalkLeft;
      }
    }
    else {
      if (right) {
        img = imgJumpRight;
      }
      else {
        img = imgJumpLeft;
      }
    }
    image(img, pos.x, pos.y, dim.x, dim.y);
  }

  void input(int k) {
    switch (k) {
    case LEFT:  
      vel.x = max(-5.0, vel.x - 5.0);  
      right = false;
      break;
    case RIGHT: 
      vel.x = min( 5.0, vel.x + 5.0);
      right = true;  
      break;
    case UP:    
      if (ground) vel.y -= 15.0;  
      break;  //attack.play();  attack.rewind();  break;
    case DOWN:  
      vel.y += 1.0;  
      break;
    }
  }
}

