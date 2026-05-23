
void setup() {
  size(500, 500);
}

void draw() {
  background(0);

  int step = width / 10;

  for (int xi = 0; xi < width; xi = xi + step) {
    for (int yi = 0; yi < height; yi = yi + step) {
      pushMatrix();
      translate(xi+step/2, yi+step/2);

      rotate(radians(15));

      noFill();
      stroke(0, 255, 206);
      rect(xi, yi, xi+step, yi+step);
      noStroke();
      fill(255);
      circle(xi+step/2, yi+step/2, 5);

      popMatrix();
    }
  }
}
