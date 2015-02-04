class Mario {
  AudioPlayer attack;
  
  PVector pos;
  PVector dim;
  PVector vel;
  PVector gravity;
  PImage img;
  boolean ground;

  Mario(float px, float py) {
    attack = minim.loadFile("attack.mp3", 2048);
    attack.rewind();

    pos = new PVector(px, py);
    dim = new PVector(50, 50);
    vel = new PVector(0, 0);
    gravity = new PVector(0, 0.5);
    img = loadImage("ProfessorT_stand.png");
    ground = false;
  }

  void update() {
    pos.add(vel);
    vel.add(gravity);
    
    if (!keyPressed && ground) {
      vel.x = 0;
    }
    
    image(img, pos.x, pos.y, dim.x, dim.y);
  }
  
  void input(int k) {
    switch (k) {
      case LEFT:  vel.x = max(-5.0, vel.x - 5.0);  break;
      case RIGHT: vel.x = min( 5.0, vel.x + 5.0);  break;
      case UP:    if (ground) vel.y -= 15.0;  attack.play();  attack.rewind();  break;
      case DOWN:  vel.y += 1.0;  break;
    }
  }  
}
