class Stage {
  PVector pos;
  PVector dim;
  
  ArrayList<Block> ground = new ArrayList<Block>();
  ArrayList<Block> blocks = new ArrayList<Block>();
  Mario mario;
  
  Stage() {
    pos = new PVector(0, 0);
    dim = new PVector(width, height);
    
    ground.add(new Block(   0, 600, 200, 200));
    ground.add(new Block( 200, 600, 200, 200));
    ground.add(new Block( 400, 600, 200, 200));
//    ground.add(new Block( 600, 600, 200, 200));
    ground.add(new Block( 800, 600, 200, 200));
    ground.add(new Block(1000, 600, 200, 200));
    
    blocks.add(new Block(800, 200, 100, 100));
    blocks.add(new Block(200, 500, 100, 100));
    blocks.add(new Block(300, 500, 100, 100));
    blocks.add(new Block(300, 400, 100, 100));
    
    mario = new Mario(300, 350);
  }
  
  void update() {
    pushMatrix();
    translate(pos.x, pos.y);
    fill(0, 255, 255);
    rect(0, 0, dim.x, dim.y);
    
    for (Block b : ground) {
      b.show();
    }
    for (Block b : blocks) {
      b.show();
    }
    
    mario.update();
    popMatrix();
  }
}
