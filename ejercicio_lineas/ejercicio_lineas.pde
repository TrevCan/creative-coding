//size(500, 500);
//ellipse(width/2, height/2, width/2, height/2);

int grosor = 3;

grosor = 10;

// cambiar a modo HSV/HSB
colorMode(HSB, 360, 100, 100);

//conseguir un color aleatorio (Hue)
float huerandom = random(0, 360);


fullScreen();

//aplicar menor brillo al trazo para que se note una diferencia
//pero el matiz es el mismo.
stroke(huerandom, 100, 80);
background(huerandom, 100, 100);

//cambiar el grosor del trazo a la variable grosor
strokeWeight(grosor);

line(width*0.25, 0, width*0.25, height);
line(width*0.75, 0, width*0.75, height);

line(width*0.5, 0, width*0.5, height);


line(0, height*0.25, width, height*0.25);
line(0, height*0.75, width, height*0.75);

line(0, height*0.5, width, height*0.5);

line(0, 0, width, height);
line(0, height, width, 0);

line(0, height*0.5, width*0.5, 0);
line(width*0.5, height, width, height*0.5);
line(width*0.5, 0, width, height*0.5);
line(0, height*0.5, width*0.5, height);

save("lineas_y_coloresaleatorio" + huerandom + ".png");
