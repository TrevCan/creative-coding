size(500, 500);

background(188, 193, 129);



//colores
// verde oscuro
//fill(52, 103, 49);
color verde_oscuro = color(52, 103, 49);

// verde intenso
//fill(55, 237, 43);
color verde_intenso = color(55, 237, 43);

// verde patas
//fill(64, 103, 61);
color verde_oscuro_2 = color(64, 103, 61);

// azul oscuro
//fill(27, 33, 124);
color azul_oscuro = color(27, 33, 124);

// verde aqua
//fill(53, 211, 141);
color aqua = color(53, 211, 141);



noStroke();



// cuello
fill(235, 255, 18);
triangle(70, 70, 160, 70, 110, 140);
triangle(70, 70, 110, 140, 70, 140);

// cabeza
fill(aqua);
circle(55, 105, 70);

//ojo
stroke(200, 0, 0);
strokeWeight(3);
circle(110, 100, 30);
noStroke();
fill(0);
circle(110, 100, 20);
fill(255);


// espalda
fill(verde_intenso);
quad(160, 70, 410, 70, 410, 180, 110, 140);


// cola
fill(verde_oscuro);
triangle(410, 70, 410, 180, 490, 100);

// abdomen
fill(azul_oscuro);
triangle(110, 140, 344, 310, 350, 170);

// extremidades superiores
fill(aqua);
triangle(160, 170, 125, 250, 170, 185);
triangle(170, 185, 150, 290, 180, 190);

// extremidades en medio
triangle(230, 230, 230, 330, 250, 240);
triangle(250, 240, 260, 250, 260, 310);

// piernas
fill(verde_oscuro);
triangle(280, 260, 210, 430, 270, 435);
quad(350, 170, 410, 180, 440, 440, 335, 440);

// patas
fill(verde_oscuro_2);

triangle(155, 435, 210, 430, 220, 490);
fill(aqua);
triangle(170, 455, 225, 460, 225, 490);
fill(0);
triangle(190, 470, 230, 470, 225, 501);

// piernas y patas derecha
fill(aqua);
triangle(360, 410, 380, 480, 290, 430);
fill(verde_oscuro_2);
triangle(305, 460, 365, 445, 375, 485);
fill(0);
triangle(310, 475, 360, 460, 365, 505);

save("dinosaurio.png");
