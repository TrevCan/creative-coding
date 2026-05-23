void setup(){
  size(500, 500);
  
  rectMode(CENTER);
  
  stroke(255);
  noFill();
}

void draw(){
  
  background( 0 );
  
  fill(255);
  square(map(mouseX, 0, width, 125, 375), map(mouseY, 0, height, 125, 375), 50);
  
  stroke(255);
  strokeWeight(10);
  noFill();
  
  square(250, 250, 300);
}

void mousePressed(){
  save("map.png");
}
