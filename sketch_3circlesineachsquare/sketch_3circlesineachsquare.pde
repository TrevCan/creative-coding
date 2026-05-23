
void setup() {
  size(500, 500);
}

void draw() {
  background(0);

  int step = width / 10;

  for (int xi = 0; xi < width; xi = xi + step) {
    for (int yi = 0; yi < height; yi = yi + step) {
      for (int ns = 0; ns < 3; ns = ns + 1) {

        noFill();
        stroke(237, 255, 0);
        rect(xi, yi, xi+step, yi+step);
        noFill();
        stroke(0, 146, 255);
        circle(xi+step/2, yi+step/2, 6+ns*10);
        //circle(xi+step*random(0,1), yi+step*random(0,1), 5);
      }
    }
  }
}
