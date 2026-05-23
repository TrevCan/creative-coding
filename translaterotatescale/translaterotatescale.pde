void setup() {
  size(800, 800);

  rectMode(CENTER);
}

void draw() {

  // mover 400 pixeles a la derecha y 
  // mover 400 pixeles hacia abajo
  translate(400, 400); // --- chingon
  rotate(radians(45));
  scale(map(mouseX, 0, width, 2, 0));
  square(0, 0, 200);
  

}
