
int x1, x2, x3, y1, y2, y3;
int triSpeed;

void setup() {
  triSpeed = 1;
  size(1000, 500);

  y1 = 200;
  y2 = y1+100;
  y3 = y1+50;

  x1 = -200;
  x2 = x1;
  x3 = x1 + 200;
  strokeWeight(8);
  stroke(255);
  fill(0);
}

void draw() {
  background(0);
  x1 = x1 + triSpeed;
  x2 = x1;
  x3 = x1 + 200;
  
  if (x1 >= width) {
    y1 = 200;
    y2 = 300;
    y3 = 250;

    x1 = -200;
    x2 = -200;
    x3 = 0;
  }

  triangle(x1, y1, x2, y2, x3, y3);
}


void mousePressed(){
  x1 = 0;
}

void keyPressed(){
  triSpeed = 0;
}
