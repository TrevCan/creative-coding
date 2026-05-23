int circlex = 0;
int circley = 0;
int circlespan = 10;
int circlespeed = 1;

color colorRect;
int rectx;
int recty;
int boundx, boundy, speedx, speedy;

void setup(){
  size(500, 500);
  rectx = int(width * 0.6) -120;
  recty = height/2;
  
  boundx = int(0.6 * width);
  boundy = height;
  speedx = 1;
  speedy = 1;
  background(0);
  
  fill(0);
  stroke(255);
  strokeWeight(10);
  
  rectMode(CENTER);
  
  colorRect = color(random(0, 256), random(0, 256), random(0, 256));

}

void draw(){

  //background(50);
  fill(0, 30); 
  // only use when rectMode(CENTER) has been called
  rect(0+width/2, 0+height/2, width, height);
 
   // use with rectMode(CORNER)
  //rect(0+mouseX, 0+mouseY, width, height);

  fill(0);

  
  circle(circlex, circley, circlespan);
  circlex = circlex + circlespeed;
  circley = circley + circlespeed;
  circlespan = circlespan + circlespeed;
  
  if(circlex >= width){
    circlespeed = -1;
  }
  if(circlex <= 0){
    circlespeed = 1;
  }
  
  
  fill(colorRect);
  rect(rectx, recty, 50, 50);
  
  if(rectx >= boundx){
    speedx = -int(random(2,16));
    println(rectx);
    println(speedx);
    println(speedy);

    println("*****");
    //speedy = -int(random(2,16))*speedy/2;
  } else if(rectx <= 0){
    speedx = int(random(1,9));
    speedy = -int(random(1,2)*speedy);
  } else if(recty <= 0){
    speedx = -int(random(1,3))*speedx;
    speedy = -int(random(1,3))*speedy;
  } else if(recty >= boundy){
    speedx = int(speedx*random(-1.1, -1.9));
    speedy = -int(random(1,9));
  }
  
  rectx = rectx + speedx;
  recty = recty + speedy;
  
  
  //colorRect = colorRect >> 1;
  fill(0);
  
  triangle(mouseX-30, mouseY+20, mouseX+30, mouseY+20, mouseX, mouseY-30);

  
}
