color c2;

void setup(){
  size(500, 500);
}

void draw(){
  background(100);
  
  pushMatrix();
  translate(mouseX, mouseY);
  rotate(radians(mouseX));
  
  
  fill(mouseX, mouseY, 200);
  square(50, 50, 300);
  ellipse(0, 0, 100, 80);
  popMatrix();
}
