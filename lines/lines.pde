int state = 0;

void setup() {
  size(500, 500);
}

void draw() {
  background(0);


  if (state == 0) {
    for (int i = 0; i < 500; i = i + 50) {
      stroke(255);
      line(0, i, width, i);
    }
  }
  if (state == 1) {
    for (int i = 0; i < 500; i = i + 50) {
      stroke(255);
      line(0, i, mouseX, mouseY);
      noStroke();
      fill(255, 0, 0);
      circle(mouseX, mouseY, 20);
    }
  }
  if (state == 2) {
    for (int i = 0; i < 500; i = i + 50) {
      stroke(255);
      line(0, i, mouseX, mouseY);
      line(width, i, mouseX, mouseY);
      // yellow
      stroke(225, 255, 20);
      line(mouseX, 0, mouseX, height);
      noStroke();
      fill(255, 0, 0);
      circle(mouseX, mouseY, 20);
    }
  }

  if (state == 3) {
    for (int i = 0; i < 500; i = i + 50) {
      if (mouseX > width/2) {
        strokeWeight(20);
      }
      stroke(255);
      line(0, i, mouseX, mouseY);
      line(width, i, mouseX, mouseY);
      // yellow
      stroke(252, 4, 202);
      line(mouseX, 0, mouseX, height);
      noStroke();
      fill(255, 0, 0);
      circle(mouseX, mouseY, 20);
      strokeWeight(1);
    }
  }
}

void keyPressed() {
  if (key== ' ') {
    state++;
    if (state > 3) {
      state = 0;
    }
  }

  println(state);
}
