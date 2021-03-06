class Stage {
  AudioPlayer bgm;

  PVector pos;
  PVector dim;
  PVector view;
  PImage img;
  
  ArrayList<Block> blocks = new ArrayList<Block>();
  Mario mario;
  
  Stage() {
    bgm = minim.loadFile("BGM.mp3", 2048);
    bgm.rewind();
    bgm.play();

    pos = new PVector(0, 0);
    dim = new PVector(width * 2, height);
    view = new PVector(width, height);    
    img = loadImage("bgA.png");
    
    blocks.add(new Block(   0, 0, dim.x, 10));
    blocks.add(new Block(   0, dim.y - 10, dim.x, 10));
    blocks.add(new Block(   0, 0, 10, dim.y));
    blocks.add(new Block(   dim.x - 10, 0, 10, dim.y));

    
    blocks.add(new Block(   0, 600, 200, 200));
    blocks.add(new Block( 200, 600, 200, 200));
    blocks.add(new Block( 400, 600, 200, 200));
//    blocks.add(new Block( 600, 600, 200, 200));
    blocks.add(new Block( 800, 600, 200, 200));
    blocks.add(new Block(1000, 600, 200, 200));
    
    blocks.add(new BlockHatena(800, 300, 100, 100));
    blocks.add(new Block(200, 500, 100, 100));
    blocks.add(new Block(300, 500, 100, 100));
    blocks.add(new Block(300, 400, 100, 100));
    
    mario = new Mario(300, 350);
  }
  
  void update() {
    pushMatrix();
    translate(pos.x, pos.y);
    fill(0, 255, 255);
    image(img, 0, 0, dim.x, dim.y);
    
    for (Block b : blocks) {
      b.show();
    }

    mario.ground = false;    
    for (Block b : blocks) {
      b.regist(mario);
    }
    
    mario.update();
    popMatrix();
    
    pos.x = max(-view.x, min(0, view.x / 2 - mario.pos.x));
  }
}
