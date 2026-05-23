void setup() {
  size(400, 400);
}

void draw() {
    background(0);

    for(int i = 0; i < 10; i++){
        fill(255);
        noStroke();
        circle(random(width), random(height), 20);
    }
}

