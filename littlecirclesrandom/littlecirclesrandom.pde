
void setup() {
  size(500, 500);
}

void draw() {
  background(0);

  int step = width / 10;

  randomSeed(45);
  for (int xi = 0; xi < width; xi = xi + step) {
    for (int yi = 0; yi < height; yi = yi + step) {


      noFill();
      stroke(0, 255, 206);
      rect(xi, yi, xi+step, yi+step);
      noStroke();
      fill(255);
      //circle(xi+step/2, yi+step/2, 5);
      circle(xi+step*random(0,1), yi+step*random(0,1), 5);
    }
  }
  println(frameRate);
}
