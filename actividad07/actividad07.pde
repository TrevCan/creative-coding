
// color 1
color color1 = color(252, 0, 198);
int color1red=252, color1green=0, color1blue=198;

// color 2
color color2 = color(163, 0, 252);
int color2red=163, color2green=0, color2blue=252;


void setup() {
  // debe ser fullscreen
  fullScreen();
}

void draw() {
  // iterar por todo el ancho del canvas
  for (int x = 0; x < width; x++) {
    // usar lerpColor para interpolar entre cada uno de los canales rojo, verde y azul
    // basado en la diferencia entre cada par de colores y la proporcion
    // alcanzada de x / width
    // se multiplica por 1.0 para que se haga un valor flotante y la operacion
    // se realice correctamente
    color c1 = lerpColor(color1red, color2red, x / (1.0*width) );
    color c2 = lerpColor(color1green, color2green, x / (1.0*width) );
    color c3 = lerpColor(color1blue, color2blue, x / (1.0*width) );

    // actualizar el color de la linea
    stroke(c1, c2, c3);
    line(x, 0, x, height-1);
  }
  
}

void keyPressed(){
    save("imagen"+millis()+".png");

}
