Stage stA;

void setup() {
  size(600, 400);
  
  stA = new Stage(0, 0, 1200, 400);
}

void draw() {
  background(255);
  
  stA.update();
}


