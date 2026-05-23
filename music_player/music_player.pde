import processing.sound.*;

SoundFile pista;

boolean sonando = false;

PImage cover, vinilo, icon;

int rot = 0;
int rot_speed = 0;

void setup() {
  size(500, 500);

//  textFont(createFont("techno_hideo/techno_hideo.ttf"), 128);
  

  cover = loadImage("cover_headswillroll.png");
  vinilo = loadImage("vinilo.png");
  vinilo.resize(300, 300);
  icon = loadImage("playIcon.png");
  imageMode(CENTER);
  textAlign(CENTER);

  pista = new SoundFile(this, "yeahyeahyeahs_heads_will_roll.wav");
}

void draw() {
  background(#197607);
  
  rot = rot + rot_speed;

  pushMatrix();
  translate(width/2, 156);
  rotate(radians(rot));
  image(vinilo, 0, 0);
  popMatrix();

  if (mouseX >= 100 && mouseX <= 400 && mouseY >= 150 && mouseY <= 450) {
    tint(100);
  } else {
    noTint();
  }



  image(cover, width/2, 304);
  noTint();
  image(icon, width/2, height/2, 100, 100);
  
  text("Heads Will Roll - Yeah Yeah Yeahs", width/2, height-25);
}

void keyPressed() {

  println(mouseX + ", " + mouseY);
}

void mousePressed() {

  if (mouseX >= 100 && mouseX <= 400 && mouseY >= 150 && mouseY <= 450) {


    // la expresión == true no es necesaria
    //
    if (sonando) {
      pista.pause();
      sonando = false;
      icon = loadImage("playIcon.png");
      rot_speed = 0;
    } else {
      pista.play();
      sonando = true;
      icon = loadImage("pauseIcon.png");
      rot_speed = 2;
    }
  }
}
