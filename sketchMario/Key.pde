boolean keyUp, keyDown, keyLeft, keyRight;

void keyPressed() {
  if (key == CODED) {
    switch (keyCode) {
      case UP:    keyUp = true;    break;
      case DOWN:  keyDown = true;  break;
      case LEFT:  keyLeft = true;  break;
      case RIGHT: keyRight = true; break;
    }
  }
  stageA.mario.input();
}

void keyReleased() {
  if (key == CODED) {
    switch (keyCode) {
      case UP:    keyUp = false;    break;
      case DOWN:  keyDown = false;  break;
      case LEFT:  keyLeft = false;  break;
      case RIGHT: keyRight = false; break;
    }
  }
}
