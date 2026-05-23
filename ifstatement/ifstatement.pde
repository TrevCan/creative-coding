int fondo = 255;

int formas = 0;

int c1 = #FA00C0;
int c2 = #00E7FA;

void setup() {

  fondo = c1;
  formas = c2;

  size(500, 500);
}

void draw() {
  background(fondo);

  stroke(formas);

  // lineas verticales
  line(width*1/3, 0, width*1/3, height);
  line(width*2/3, 0, width*2/3, height);

  // lineas horizontales

  line(0, height/3, width, height/3);
  line(0, height*2/3, width, height*2/3);

  rectMode(CENTER);
  fill(formas);
  square(mouseX, mouseY, 50);

  if (mouseX > width/3 && mouseX < width*2/3 && mouseY > height/3 && mouseY < height*2/3) {
    fondo = c2;
    formas = c1;
  } else {
    fondo = c1;
    formas = c2;
  }
}
