int x=0;
int y=250;

int xspeed = 1;
int yspeed = 1;

void setup() {

  size(500, 500);
}

void draw() {

  // fondo color negro
  background(0);


  pushMatrix();
  translate(width/2, height/2);
  rotate(x);
  fill(255);
  rect(-104, -104, 208, 208);
  popMatrix();


  // mapear ubicación de mouseX a 1, 10 para velocidad de x
  xspeed = (int) map(mouseX, 0, width, 1, 10) * Integer.signum(xspeed);

  // asignar velocidad aleatoria a eje y
  yspeed = (int) random(1, 15) *Integer.signum(yspeed);


  //xspeed = 2;
  println(xspeed);

  x = x + xspeed;
  y = y + yspeed;
  fill(random(0, 256), random(0, 256), random(0, 256));
  square(x, y, 50);

  //hacer circulo gris
  fill(200);
  // mapear la altura del mouseY a la diferencia entre el
  // circulo y el cuadrado
  int diffY = (int) map(mouseY, 0, height, 40, 100);
  int circlex = x + 30;
  int circley = y - diffY;
  circle(circlex, circley, 80);


  // hacer una diferencia de 100 entre posicion x y ellipse x
  int ellipsex = -100 + x;
  //mapear el sin(x) a la altura del canvas

  int ellipsey = (int) map(sin(x), -1, 1, 0, height);

  // mapear mouseY a 0, 255 para el color rojo del elipse
  int ellipsered = (int) map(mouseY, 0, height, 0, 255);
  fill(ellipsered, 0, 200);
  ellipse(ellipsex, ellipsey, 90, 30);

  if (y + 50 >= height) {
    yspeed = yspeed * -1;
  }
  if ((x + 50) >= width) {
    println("aaaaa");
    xspeed = xspeed * -1;
  }

  if (x <= 0) {
    xspeed = xspeed * -1;
  }

  if (y <= 0) {
    yspeed = yspeed * -1;
  }
}

void keyPressed() {
  if (key==' ') {
    x = 0;
    y = 250;
  }
  if (key=='s') {
    save("movepong.png");
  }
}
