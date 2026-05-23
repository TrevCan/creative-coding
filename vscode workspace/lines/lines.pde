int state = 0;

void setup() {
  size(500, 500);
}

void draw() {
  background(0);
  for (int i = 0; i < 500; i = i + 50) {
    stroke(255);
    line(0, i, width, i);
  }

  for (int i = 0; i < 500; i = i + 50) {
    stroke(200, 0, 30);
    line(0, i, mouseX, mouseY);
    fill(255, 0, 0);
    circle(mouseX, mouseY, 20);
  }
}

void keyPressed() {
  if (key== ' ') {
    state++;
    if (state > 3) {
      state = 0;
    }
  }
}
