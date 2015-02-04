import ddf.minim.*;

Minim minim;
Stage stageA;

void setup() {
  size(1200, 800);

  minim = new Minim(this);
  stageA = new Stage();
}

void draw() {
  background(0, 255, 0);
  
  stageA.update();
}

void stop() {
  minim.stop();
  super.stop();
}

void keyPressed() {
  if (key == CODED) {
    stageA.mario.input(keyCode);
  }
}
