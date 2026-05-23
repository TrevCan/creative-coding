PImage fondo;
PImage personaje;

void setup(){
  size(1366, 768);
  //fullScreen();
  println(width);
  println(height);
  
  fondo = loadImage("od_brain.jpeg");
  personaje = loadImage("tux_t.png");
  imageMode(CENTER);
}

void draw(){
  tint(255, 100, 100, 100);
  image(fondo, width/2, height/2);
  noTint();
  image(personaje, mouseX, mouseY, 150, 150);
  stroke(255, 0, 255);
  strokeWeight(10);
  point(mouseX, mouseY);
}
