// little balls
// Hecho por Hector Alejandro Canizales Pena
//

// hacer un juego simple 
// en donde dos bolitas se mueven horizontalmente
// hacia la derecha.
// ambas bolas empiezan por el lado izquierdo a la misma
// posicion horizontal y en diferentes posiciones
// verticales para que se vean ambas bolas.

// la bola ganadora es la primera que llega a la línea de meta
// la línea de meta es variable en posición horizontal.
// en la pantalla se muestra qué jugador ganó con 
// el texto del mismo color
//
// el juego es autónomo y ambas bolas inician con una velocidad aleatoria
// todo:
// - hacer juego
// - mostrar score
// - 2 cheat codes
// - Haz una versión en la que las pelotitas se mueven de forma manual para 2 jugadores (nivel intermedio)
//
//
// estructura del juego:
// línea de meta:
//    línea roja vertical con posición en x aleatoria cada vez que inicia el juego
//  jugador 1:
//    bola azul con velocidad aleatoria en x, posición en y es fija
//  jugador 2:
//    bola verde con velocidad aleatoria en x, posición en y es fija
//  texto de ganador:
//    texto diciendo Winner del mismo color que el ganador.

int line_x = 0;
int meta_color = color(255, 0, 0);

int p0_color = color(0, 0, 255), p1_color = color(0, 255, 0);
int p0y, p1y;
int p0x, p1x;
int p0speedx, p1speedx;

void setup(){
  size(500, 500);
  
  line_x = (int) random(width/2, width);

  p0y = height * 1/3;
  p1y = height * 2/3;

  p0x = 100;
  p1x = 100;

// velocidades aleatorias
  p0speedx = (int) random(1, 15);
  p1speedx = (int) random(1, 15);
  
}

void draw(){
  background(0);

  strokeWeight(5);
  stroke(meta_color);
  line(line_x, 0, line_x, height-1);



  if(p0x >= line_x || p1x >= line_x){
    
    p0speedx = 0;
    p1speedx = 0;
    textAlign(CENTER);
    textSize(60);
    if(p0x > p1x){
      fill(p0_color);
      text("Winner!\n[SPACE] to reset", width/2, height/2);
    } else if(p1x > p0x){
      fill(p1_color);
      text("Winner!\n[SPACE] to reset", width/2, height/2);
    } else {
      fill(255);
      text("Tie\n[SPACE] to reset", width/2, height/2);
    }
    
  }


  p0x = p0speedx + p0x;
  p1x = p1speedx + p1x;
  

  noStroke();
  fill(p0_color);
  circle(p0x, p0y, 30);
  fill(p1_color);
  circle(p1x, p1y, 30);
  
}

void keyReleased(){
  if( key == ' '){
    p0x = 100;
    p1x = 100;
  p0speedx = (int) random(1, 15);
  p1speedx = (int) random(1, 15);
  }
  
}
