boolean clicked = false;

void setup() {
  fullScreen();
}

void draw() {
  background(0);
  stroke(255);
  line(50, height/2, mouseX, mouseY);
  stroke(255, 0, 0);
  fill(255, 0, 0);
  circle(mouseX, mouseY, 100);
  if (clicked == true) {
    stroke(255, 0, 0);
    fill(255, 0, 0);
    circle(mouseX, mouseY, 100);
  }
}

void mousePressed() {
  clicked = true;
}
