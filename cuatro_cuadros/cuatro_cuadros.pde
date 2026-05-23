int s1, s2, s3, s4;

void setup() {
  size(500, 500);
  stroke(255);
  fill(0);
}

void draw() {
  

  if (mouseX >= 0 && mouseX < 250 && mouseY >= 0 && mouseY < 250) {
    s1 = 255;
  } else {
    s1 = s1 - 5 ;
  }
  if (mouseX >= 250 && mouseX < 500 && mouseY >= 0 && mouseY < 250) {
    s2 = 255;
  } else {
    s2 = s2 - 5;
  }
  if (mouseX >= 0 && mouseX < 250 && mouseY >= 250 && mouseY < 500) {
    s3 = 255;
  } else {
    s3 = s3 - 5;
  }
  if (mouseX >= 250 && mouseX < 500 && mouseY >= 250 && mouseY < 500) {
    s4 = 255;
  } else {
    s4 = s4 - 5;
  }
  s1 = max(0, s1);
  fill(s1);
  square(0, 0, 250);

  s2 = max(0, s2);
  fill(s2);
  square(250, 0, 250);

  s3 = max(0, s3);
  fill(s3);
  square(0, 250, 250);

  s4 = max(0, s4);
  fill(s4);
  square(250, 250, 250);
}

void keyPressed(){
 save("cuatrocuadros.png"); 
}
