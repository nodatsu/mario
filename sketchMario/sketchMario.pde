Stage stageA;

PVector gravity = new PVector(0, 0.2);

void setup() {
  size(1200, 800);
  
  stageA = new Stage();
}

void draw() {
  background(0, 255, 0);
  
  stageA.update();
}

void keyPressed() {
  if (key == CODED) {
    stageA.mario.move(keyCode);
  }
}
