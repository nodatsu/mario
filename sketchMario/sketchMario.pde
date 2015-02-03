Stage stA;

void setup() {
  size(1200, 800);
  
  stA = new Stage(0, 0, 1200, 800);
}

void draw() {
  background(255);
  
  stA.update();
}

void keyPressed() {
  stA.mario.jump -= 100;
}

