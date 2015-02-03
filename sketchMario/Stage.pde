class Stage {
  PVector pos;
  PVector dim;
  Mario mario;
  ArrayList<Block> ground = new ArrayList<Block>();
  ArrayList<Block> blocks = new ArrayList<Block>();

  Stage(float px, float py, float sx, float sy) {
    pos = new PVector(px, py);
    dim = new PVector(sx, sy);

    mario = new Mario(450, 350);

    ground.add(new Block(   0, 600, 200, 200));
    ground.add(new Block( 200, 600, 200, 200));
    ground.add(new Block( 400, 600, 200, 200));
    //    ground.add(new Block( 600, 300, 100, 100));
    ground.add(new Block( 800, 600, 200, 200));
    ground.add(new Block(1000, 600, 200, 200));

    blocks.add(new Block(800, 200, 100, 100));
    blocks.add(new Block(300, 500, 100, 100));
    blocks.add(new Block(400, 400, 100, 100));
    blocks.add(new Block(400, 500, 100, 100));
  }

  void update() {
    pushMatrix();
    translate(pos.x, pos.y);

    fill(0, 255, 255, 64);
    rect(0, 0, dim.x, dim.y);

    mario.update();

    for (Block b : ground) {
      b.update();
    }
    for (Block b : blocks) {
      b.update();
    }

    popMatrix();
  } 

  void move() {
    boolean col = false;
    for (Block b : ground) {
      if (b.col(mario)) {
        col = true;
        break;
      }
    }
    mario.col = col;
  }
}

