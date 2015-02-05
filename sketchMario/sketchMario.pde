import ddf.minim.*;

Minim minim;

Stage stageA;

void setup() {
  minim = new Minim(this);
  size(1200, 800);
  
  stageA = new Stage();
}

void draw() {
  background(0, 255, 0);
  
  stageA.update();
}

