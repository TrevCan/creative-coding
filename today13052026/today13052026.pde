int escena = 0;

void setup() {
  size(600, 600);
}

void draw() {
  switch(escena) {
  case 0:
    background(255, 0, 0); // 0
    break;
  case 1:
    background(0, 255, 0); // 1
    break;
  case 2:
    background(0, 0, 255); // 2
    break;
  case 3:
    background(255, 255, 0); // 3
    break;
  case 4:
    background(255, 0, 255); // 4
    break;
  case 5:
    background(0, 255, 255); // 5
    break;
  default:
    background(0);
  }
}

void keyPressed() {
  escena = (int) key - 48;
  println( (int) key);
}

void mousePressed(){
  escena++;
  if( escena >= 6){
    escena = 0;
  }
}
