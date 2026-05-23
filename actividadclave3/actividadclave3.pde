String texto = "Hola mundo!";
Triangle tri;

// rebote de bordes y pelota
Pong pong;

// boton para cambio de figura
Rectangle triangleButton;
// estado de triangulo
boolean showTriangle;

// triangulo
Triangle triangle;

void setup() {
  size(800, 500);

  triangle = new Triangle(0, 0, 0, 0, 0, 0);

  //    public Pong(int widthGame, int heightGame, int widthRect, int heightRect)
  pong = new Pong(500, height, 120, 50);


  textAlign(CENTER);
  textSize(40);

  showTriangle=false;

  triangleButton = new Rectangle(20, 100, 350, 90);
  triangle.set(mouseX, mouseY, mouseX + 50, mouseY, mouseX + 25, mouseY + 50);
}

void draw() {


  /*
  texto = mouseX + " " + mouseY;
   
   
   textSize(111);
   textAlign(CENTER);
   text(texto, mouseX, mouseY);
   
   tri.set(mouseX, mouseY, mouseX + 50, mouseY, mouseX + 25, mouseY + 50);
   tri.setCenter(mouseX, mouseY);
   //tri.show();
   
   if (isCollidingCirclePoint(width/2, height/2, 70, mouseX, mouseY)) {
   fill(0, 255, 0);
   } else {
   fill(0);
   }
   rect(mouseX, mouseY, 20, 50);
   if(isCollidingCircleRectangle(width/2,height/2,70,mouseX,mouseY,20,50)){
   fill(255, 0, 0);
   } else {
   fill(0);
   }
   noStroke();
   circle(width/2, height/2, 70*2);
   strokeWeight(10);
   stroke(255);
   point(mouseX, mouseY);
   */

  background(#1FA100);
  pong.show();

  fill(0);
  triangleButton.show();
  fill(255);
  text("figura", triangleButton.x + triangleButton.widthR/2, triangleButton.y+triangleButton.heightR/2);
}

void mouseReleased() {

  // boton cambiar figura
  if (mouseX >= triangleButton.x && mouseX <= triangleButton.x+triangleButton.widthR
    && mouseY >= triangleButton.y && mouseY <= triangleButton.y+triangleButton.heightR) {
    showTriangle = !showTriangle;
  }
}

void keyPressed(){
  if(key=='s'){
    save("clave3.png");
  }
}

// clase Triángulo
public class Triangle {

  //posiciones esenciales para mostrar un triángulo
  int p1x, p1y, p2x, p2y, p3x, p3y;

  //constructor de triángulo
  public Triangle(int p1x, int p1y, int p2x, int p2y, int p3x, int p3y) {
    this.p1x = p1x;
    this.p1y = p1y;
    this.p2x = p2x;
    this.p2y = p2y;
    this.p3x = p3x;
    this.p3y = p3y;
  }

  //método set para modificar todos los valores
  public void set(int p1x, int p1y, int p2x, int p2y, int p3x, int p3y) {
    this.p1x = p1x;
    this.p1y = p1y;
    this.p2x = p2x;
    this.p2y = p2y;
    this.p3x = p3x;
    this.p3y = p3y;
  }

  // centers triangle around point (cx, cy)
  // takes into account previous width and height
  // assumes counter-clockwise triangle
  // configuration
  //      p3
  //   p1    p2
  public void setCenter(int cx, int cy) {
    int widthTriangle = p2x - p1x;
    int halfWidth = (int) widthTriangle / 2;
    int heightTriangle = p3y - p1y;
    int halfHeightTriangle = (int) heightTriangle / 2;

    p1x = cx - halfWidth;
    p1y = cy + halfHeightTriangle;

    p2x = cx + halfWidth;
    p2y = cy + halfHeightTriangle;

    p3x = cx;
    p3y = cy - heightTriangle;
  }

  public void show() {
    triangle(p1x, p1y, p2x, p2y, p3x, p3y);
  }
}

// clase pong con rebote de paredes y pelota
// si showTriangle es true no se muestra la pelota y se muestra el triangulo
// si showTriangle es false no se muestra el triangulo y se muestra la pelota
public class Pong {
  int widthPong;
  int heightPong;

  int widthRect;
  int heightRect;
  Rectangle r1;
  Rectangle r2;
  Ball ball;
  int offsetx = 0;
  public Pong(int widthGame, int heightGame, int widthRect, int heightRect) {
    this.widthPong = widthGame;
    this.heightPong = heightGame;
    r1 = new Rectangle(width/2, 0, widthRect, heightRect);
    r2 = new Rectangle(width/2, heightPong-heightRect, widthRect, heightRect);
    ball = new Ball(width/2, height/2, 30);

    offsetx = width/3;
  }

  public void show() {

    noFill();
    stroke(0);
    rect(offsetx, 0, widthPong, heightPong);
    r1.show();
    r2.show();

    // simular cada lado como un rectángulo hacia afuera y hacer
    // un cálculo de colisión para cada uno.
    // en caso de que haya una colisión, cambiar dirección de movimiento
    // de acuerdo al eje de la colisión.

    if (  isCollidingPointRectangle(ball.x, ball.y, offsetx+widthPong, -100, widthPong, heightPong+200) ||
      isCollidingPointRectangle(ball.x, ball.y, offsetx-100, -100, 100, heightPong+200) ) {
      ball.speedx = ball.speedx * -1;
    }
    if ( isCollidingPointRectangle(ball.x, ball.y, offsetx-100, heightPong, widthPong+200, heightPong) ||
      isCollidingPointRectangle(ball.x, ball.y, offsetx-100, -100, widthPong+200, 100) ) {
      ball.speedy = ball.speedy * -1;
    }

    // if( isCollidingCircleRectangle(ball.x, ball.y, ball.r, r1.x, r1.y, r1.widthR, r2.heightR)) {
    //   ball.speedx = ball.speedx * -1;
    // }
    ball.move();
    ball.move();

    if (showTriangle) {
      triangle.set(ball.x, ball.y, ball.x + 50, ball.y, ball.x + 25, ball.y + 50);
      triangle.show();
    } else {
      ball.show();
    }

    if ( isCollidingPointRectangle(mouseX, mouseY, r1.x, r1.y, r1.widthR, r1.heightR) && mousePressed && mouseButton==LEFT) {
      fill(255, 0, 0);
      ball.speedy = Integer.signum(ball.speedy)*(int)random(1, 6);
      ball.speedx = Integer.signum(ball.speedx)*(int)random(1, 6);
    } else if (isCollidingPointRectangle(mouseX, mouseY, r1.x, r1.y, r1.widthR, r1.heightR) && mousePressed && mouseButton==RIGHT) {
      fill(255, 0, 0);
      ball.speedx = Integer.signum(ball.speedy)*(int)random(5, 10);
      ball.speedy = Integer.signum(ball.speedx)*(int)random(5, 10);
    } else {
      fill(0, 255, 0);
    }
    textSize(40);
    text("Speed", r1.x+r1.widthR/2, 0+r1.heightR/2+10);


    if ( isCollidingPointRectangle(mouseX, mouseY, r2.x, r2.y, r2.widthR, r2.heightR) && mousePressed && mouseButton==LEFT ) {
      fill(255, 0, 0);
      ball.r = (int)random(5, 150);
    } else {
      fill(0, 255, 0);
    }
    text("Size", r2.x+r2.widthR/2, heightPong-heightRect-10);
  }
}

// clase rectangulo,
// tiene posicion (x,y),
// ancho widthR y alto heightR.
public class Rectangle {
  int x;
  int y;
  int widthR;
  int heightR;
  public Rectangle(int x, int y, int widthR, int heightR) {
    this.x = x;
    this.y = y;
    this.widthR = widthR;
    this.heightR = heightR;
  }

  public void show() {
    rectMode(CORNER);
    rect(x, y, widthR, heightR);
  }
}

// clase Ball. cuenta con posicion (x,y) y un radio.
public class Ball {
  int x;
  int y;
  int r;

  int speedx;
  int speedy;
  public Ball(int x, int y, int r) {
    this.x = x;
    this.y = y;
    this.r = r;
    this.speedx = 5;
    this.speedy = 10;
  }

  public void move() {
    x = x + speedx;
    y = y + speedy;
  }

  public void show() {
    noStroke();
    fill(255);
    circle(x, y, r*2);
  }
}


// funcion para saber si hay una colision entre un circulo
// y un rectangulo
// basado en https://youtu.be/gUTeWOfwECc?t=816
boolean isCollidingCircleRectangle(int x, int y, int radius, int x2, int y2, int widthRect, int heightRect) {
  int closeX = x;
  int closeY = y;
  if (x > x2 + widthRect ) {
    // rightSide is the closest
    closeX = x2 + widthRect;
  } else if (x < x2) {
    closeX = x2;
  }

  if (y < y2) {
    // leftSide is the closest
    closeY = y2;
  } else if (y > y2 + heightRect) {
    closeY = y2 + heightRect;
  }
  int distx = closeX - x;
  int disty = closeY - y;
  int distance = (distx*distx) + (disty*disty);
  //return distance <= radius*radius;
  return isCollidingCirclePoint(x, y, radius, closeX, closeY);
}

// funcion para saber si un circulo está colisionando con un punto
boolean isCollidingCirclePoint(int x, int y, int r, int x2, int y2) {
  return (x2-x)*(x2-x) + (y2-y)*(y2-y) <= r*r;
}

boolean isCollidingPointRectangle(int x, int y, int x2, int y2, int widthRect, int heightRect) {
  int closeX = x;
  int closeY = y;
  if (x > x2 + widthRect ) {
    // rightSide is the closest
    closeX = x2 + widthRect;
  } else if (x < x2) {
    closeX = x2;
  }

  if (y < y2) {
    // leftSide is the closest
    closeY = y2;
  } else if (y > y2 + heightRect) {
    closeY = y2 + heightRect;
  }
  int distx = closeX - x;
  int disty = closeY - y;
  int distance = (distx*distx) + (disty*disty);
  return distance == 0;
}

