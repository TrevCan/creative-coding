void setup() {

  size(500, 500);
}

void draw() {

  fill(0, 30);
  rect(0, 0, width, height);


  stroke(random(0, 200), 0, random(0, 256));
  noFill();
  circle( random(0, width), random(0, height), random(10, 100) );
}


void keyPressed(){
 
  if(key==' '){
    print("SPACE");
    fill(0);
    rect(0,0, width, height);
  }
}

void mousePressed(){
  save("circulos_aleatorios.png"); 
}
