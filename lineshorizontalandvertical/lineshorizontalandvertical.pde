void setup() {
  size(500, 500);
}

void draw() {
  background(0);
  int n = 5;
  int sizerect = width / n;
  for (int x = 0; x < n; x++) {

    for (int y = 0; y < n; y++) {

      int nparlines = 9;
      int dpline = sizerect/(2*nparlines);
      int spacebetweenpairs = 5;
      int dppar = sizerect / (2*nparlines) + 1;
      // sizerect

      int dir = (x+y)%2;
      if (dir==1) {

        for (int z = 0; z < nparlines; z++) {
          stroke(255);
          line(
            x*sizerect +dpline*z +dppar*z,
            y*sizerect,
            x*sizerect +dpline*z +dppar*z,
            y*sizerect+sizerect);
          line(
            x*sizerect +dpline*z +dppar*z + dpline,
            y*sizerect,
            x*sizerect +dpline*z +dppar*z + dpline,
            y*sizerect+sizerect);
        }
      } else {
        for (int z = 0; z < nparlines; z++) {
          stroke(255);
          line(
            x*sizerect,
            y*sizerect +dpline*z +dppar*z,
            x*sizerect +sizerect,
            y*sizerect +dpline*z +dppar*z);
          line(
            x*sizerect,
            y*sizerect +dpline*z +dppar*z + dpline,
            x*sizerect +sizerect,
            y*sizerect +dpline*z +dppar*z + dpline);
        }
      }
    }
  }
}
