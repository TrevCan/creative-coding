
// color 1
int color1red=0, color1green=0, color1blue=0;
color color1 = color(color1red, color1green, color1blue);

// color 2
int color2red=255, color2green=255, color2blue=255;
color color2 = color(color2red, color2green, color2blue);


void setup() {
  // canvas cuadrado
  size(500, 500);
}

void draw() {
  int n = 10;
  int size = width / n;

  // iterar de 0 a 9 en el eje x
  for (int x = 0; x < n; x++) {
    // iterar de 0 a 9 en el eje y
    for (int y = 0; y < n; y++) {

      // usar lerpColor para interpolar entre cada uno de los canales rojo, verde y azul
      // basado en la diferencia entre cada par de colores y la
      // division (x+y) / 2n
      color c1 = lerpColor(color1red, color2red, (x+y) / (2.0*n) );
      color c2 = lerpColor(color1green, color2green, (x+y) / (2.0*n) );
      color c3 = lerpColor(color1blue, color2blue, (x+y) / (2.0*n) );

      // actualizar el color de la linea
      //stroke(c1, c2, c3);
      //line(x, 0, x, height-1);

      noStroke();
      fill(c1, c2, c3, 100);

      rect(x*size, y*size, size, size);
    }
  }
}

// guardar imagen
// nombre con tiempo en milisegundos
void keyPressed() {
  save("imagen"+millis()+".png");
}
