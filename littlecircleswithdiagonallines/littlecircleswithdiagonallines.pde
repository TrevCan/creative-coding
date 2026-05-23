void setup() {
  size(400, 400);
}

void draw() {
  background(180);
  int n_x = 8;
  int n_y = 8;
  for (int x = 0; x < n_x; x++) {
    for (int y = 0; y < n_y; y++) {
      int size = width / 8;
      int pointx = x*size;
      int pointy = y*size;
      noFill();
      stroke(0);
      rect(x*size, y*size, size, size);
      int centerx = x*size + size/2;
      int centery = y*size + size/2;
      fill(245, 17, 188);
      noStroke();
      circle(centerx, centery, 8);


      stroke(17, 22, 245);
      //pos 1
      line(pointx, pointy, centerx, centery);

      ////pos 2
      //line(pointx+size, pointy, centerx, centery);

      ////pos 3
      //line(pointx+size, pointy+size, centerx, centery);

      ////pos 4
      //line(pointx, pointy+size, centerx, centery);

  }
  }
}
