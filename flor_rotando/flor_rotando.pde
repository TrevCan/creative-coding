int angle = 0;

void setup() {
  size(800, 800);
}

void draw() {
  
  background(100);
  angle = millis()/10;
  //translate(400, 400);

  noStroke();

  fill(255);
  rect(350, 250, 100, height-1);
  
//  translate(400, 400);
  //rotate(radians(angle));

  fill(0);
  pushMatrix();
  translate(400, 400);
  rotate(radians(angle));
  ellipse(0, 0, 100, 500);
  ellipse(0, 0, 500, 100);
  popMatrix();

  pushMatrix();
  translate(400, 400);
  rotate(radians(angle));
  rotate(radians(45));
  ellipse(0, 0, 100, 500);
  ellipse(0, 0, 500, 100);
  popMatrix();

}
