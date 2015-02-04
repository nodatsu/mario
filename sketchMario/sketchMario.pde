//import ddf.minim.*;

//Minim minim;

//AudioPlayer bgm;
Stage stageA;

void setup() {
//  minim = new Minim(this);
  size(1200, 800);
  
//  bgm = minim.loadFile("BGM.mp3", 2048);
//  bgm.rewind();
//  bgm.play();
  stageA = new Stage();
}

void draw() {
  background(0, 255, 0);
  
  stageA.update();
}

void keyPressed() {
  if (key == CODED) {
    stageA.mario.input(keyCode);
  }
}
