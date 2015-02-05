class Mario {
  AudioPlayer soundJump;

  PVector pos;
  PVector dim;
  PVector vel;
  PVector gravity;
  PImage imgWalkRight, imgWalkLeft, imgJumpRight, imgJumpLeft;
  int jump;
  boolean ground, right;

  Mario(float px, float py) {
    soundJump = minim.loadFile("jump.mp3", 2048);
    soundJump.rewind();

    pos = new PVector(px, py);
    dim = new PVector(50, 50);
    vel = new PVector(0, 0);
    gravity = new PVector(0, 0.5);
    imgWalkRight = loadImage("ProfessorT_WalkRight.png");
    imgWalkLeft = loadImage("ProfessorT_WalkLeft.png");
    imgJumpRight = loadImage("ProfessorT_JumpRight.png");
    imgJumpLeft = loadImage("ProfessorT_JumpLeft.png");
    jump = 0;
    ground = false;
    right = true;
  }

  void update() {
    pos.add(vel);
    vel.add(gravity);

    if (!keyPressed && jump == 0) {
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

  void input() {
    if (keyLeft) {  
      vel.x = max(-5.0, vel.x - 5.0);  
      right = false;
    }
    if (keyRight) { 
      vel.x = min( 5.0, vel.x + 5.0);
      right = true;  
    }
    if (keyUp) {  
      if (ground) {
        vel.y -= 13.0;
        jump++;
        soundJump.rewind();
        soundJump.play();
      }
      else if (jump == 1) {
        vel.y -= 13.0;
        jump++;
      }
    }
    if (keyDown) {
      vel.y += 1.0;  
    }
  }
}

