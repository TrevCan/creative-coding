int x = 0;
int speed = +5;

void setup() {
  size(1000, 300);
}

void draw() {
  background(0);
  noFill();
  stroke(255);
  strokeWeight(10);
  circle(x, 150, 100);

  x = x + speed;

  if (x > width || x < 0) {
    speed = -speed;
  }
  
}
