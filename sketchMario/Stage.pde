class Stage {
  PVector pos;
  PVector dim;
  Mario mario;
  ArrayList<Block> ground = new ArrayList<Block>();
  ArrayList<Block> blocks = new ArrayList<Block>();

  Stage(float px, float py, float sx, float sy) {
    pos = new PVector(px, py);
    dim = new PVector(sx, sy);
    
    mario = new Mario(225, 175);
    
    ground.add(new Block(  0, 300, 100, 100));
    ground.add(new Block(100, 300, 100, 100));
    ground.add(new Block(200, 300, 100, 100));
//    ground.add(new Block(300, 300, 100, 100));
    ground.add(new Block(400, 300, 100, 100));
    ground.add(new Block(500, 300, 100, 100));
    
    blocks.add(new Block(400, 100, 50, 50));
    blocks.add(new Block(150, 250, 50, 50));
    blocks.add(new Block(200, 200, 50, 50));
    blocks.add(new Block(200, 250, 50, 50));
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
}
